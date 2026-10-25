# apply.py LANG COURSE LEVELS SECTIONS SPEC
#
# Writes LEVELS/<level>/LANG/<url>/index.md from a translator's spec (see
# trsheet.py): LANG's original page with the translated blocks put in. Refuses
# a block left as TODO or missing, and says so per block.
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import LEVELS, load, save, prose, urls, read_spec

lang, course, levels, sections, spec_path = sys.argv[1:6]
spec, _ = read_spec(spec_path)
problems, written = [], 0
for url in urls(os.path.join(levels, 'a2'), sections):
    en = load(os.path.join(course, url, 'index.md'))[1]
    path = os.path.join(course, lang, url, 'index.md')
    if not os.path.exists(path):
        continue
    head, xx = load(path)
    if len(xx) != len(en):
        continue                  # trsheet.py skipped it too
    for l in LEVELS:
        lv = load(os.path.join(levels, l, url, 'index.md'))[1]
        out = list(xx)
        for i in range(len(en)):
            if lv[i] == en[i]:
                continue
            t = spec.get(url, {}).get(i, {}).get(l)
            if t is None or t == '=':
                if prose(lv[i])[0] != prose(en[i])[0]:
                    problems.append(f'{url} [{l}] block {i}: no translation')
                continue
            if t.startswith('TODO'):
                problems.append(f'{url} [{l}] block {i}: still TODO')
                continue
            code = prose(xx[i])[1]
            out[i] = t + ('\n' + code if code else '')
        save(os.path.join(levels, l, lang, url, 'index.md'), head, out)
        written += 1
print(f'{lang}: {written} level pages written')
for p in problems:
    print('  ' + p)
sys.exit(1 if problems else 0)
