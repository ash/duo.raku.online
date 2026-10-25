# measure.py COURSE LEVELS SECTIONS [--long N]
#
# How far each level's English sits from the original in some sections: words
# a sentence, the share over 15 words, words of three or more syllables, a
# Flesch-Kincaid grade, and how much of the original's wording survives. With
# --long N, also every level sentence longer than N words (A2) or N+4 (B1).
# Code becomes X; quizzes, headings and file links are left out.
import sys, os, re, difflib
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import LEVELS, load, rewritable, prose, urls

course, levels, sections = sys.argv[1:4]
long_at = int(sys.argv[5]) if len(sys.argv) > 5 and sys.argv[4] == '--long' else None


def texts(path):
    out = []
    for b in load(path)[1]:
        if not rewritable(b) or prose(b)[0].startswith('#'):
            continue
        t = prose(b)[0]
        t = re.sub(r'<[^>]+>', ' ', t)
        t = re.sub(r'\[([^\]]*)\]\([^)]*\)', r'\1', t)
        out.append(re.sub(r'`[^`]*`', 'X', t).strip())
    return out


def sentences(t):
    return [s for s in re.split(r'(?<=[.!?:])\s+(?=[A-Z0-9X‘“"])', t) if re.search(r'\w', s)]


def nwords(s): return len(re.findall(r'\w+', s))


def syll(w):
    w = w.lower()
    n = len(re.findall(r'[aeiouy]+', w))
    return max(n - (1 if w.endswith('e') and n > 1 else 0), 1)


def stats(ts, ref=None):
    ss = [s for t in ts for s in sentences(t)]
    ws = [w for s in ss for w in re.findall(r"[A-Za-z']+|X|\d+", s)]
    if not ss:
        return 'no prose'
    wps = len(ws) / len(ss)
    long = sum(1 for s in ss if nwords(s) > 15) / len(ss)
    spw = sum(syll(w) for w in ws) / len(ws)
    hard = sum(1 for w in ws if syll(w) >= 3) / len(ws)
    out = (f'{len(ss):5} sentences {wps:5.1f} words/sentence {long:4.0%} over 15 words'
           f' {hard:4.0%} words of 3+ syllables  grade {0.39 * wps + 11.8 * spw - 15.59:4.1f}')
    if ref is not None:
        a, b = ' '.join(ref).lower().split(), ' '.join(ts).lower().split()
        out += f'  kept wording {difflib.SequenceMatcher(None, a, b, autojunk=False).ratio():.0%}'
    return out


pages = urls(os.path.join(levels, 'a2'), sections)
orig = [t for u in pages for t in texts(os.path.join(course, u, 'index.md'))]
print(f'{len(pages)} pages')
print('original', stats(orig))
for lv in LEVELS:
    print(f'{lv:8}', stats([t for u in pages for t in texts(os.path.join(levels, lv, u, 'index.md'))], orig))
if long_at:
    for lv in LEVELS:
        lim = long_at + (4 if lv == 'b1' else 0)
        print(f'\n{lv} sentences over {lim} words:')
        for u in pages:
            for t in texts(os.path.join(levels, lv, u, 'index.md')):
                for s in sentences(t):
                    if nwords(s) > lim:
                        print(f'  {nwords(s):3} {u}: {s}')
