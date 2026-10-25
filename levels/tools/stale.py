# stale.py COURSE SECTIONS
#
# Translations made from an older version of the English page. Code and
# program output keep their numbers and their shape in every language, so a
# fenced block whose line count or numbers differ from the English one marks a
# page the translation has not caught up with. Read what it lists before
# adding a line to levels/skip.txt: a changed version number in a REPL banner
# is harmless, a different exercise is not.
import sys, os, re
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import load, urls

LANGS = ['de', 'ru', 'es', 'it', 'nl', 'uk', 'bg', 'lv', 'eo', 'la']


def shape(block):
    return len(block.split('\n')), sorted(re.findall(r'\d+', block))


course, sections = sys.argv[1:3]
for url in urls(course, sections):
    en = load(os.path.join(course, url, 'index.md'))[1]
    found = []
    for l in LANGS:
        p = os.path.join(course, l, url, 'index.md')
        if not os.path.exists(p):
            continue
        xx = load(p)[1]
        if len(xx) != len(en):
            continue              # trsheet.py skips these anyway
        diff = [i for i, (a, b) in enumerate(zip(en, xx))
                if a.startswith('```') and b.startswith('```') and shape(a) != shape(b)]
        if diff:
            found.append(f'{l}{diff}')
    if found:
        print(f'{url}: {" ".join(found)}')
