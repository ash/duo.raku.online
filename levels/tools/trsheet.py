# trsheet.py LANG COURSE LEVELS SECTIONS > S/LANG.spec
#
# The worksheet for translating the levels of some sections into LANG. A level
# page in LANG starts from LANG's own original page, so code, quizzes and
# links come through as LANG has them; only the blocks whose English changed
# at a level need new text:
#
#   @@ essentials/loops/while
#   == 2
#   EN: the original English
#   DE: LANG's original translation of it
#   A2: TODO: the English at A2      (the translator puts LANG here)
#   B1: =                            (this level kept the original)
#
# A page whose LANG original does not line up block for block with the
# English cannot be done this way; it is listed in a # line and skipped, and
# that page has no LANG at the levels.
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import LEVELS, load, prose, urls, enc

lang, course, levels, sections = sys.argv[1:5]
X = lang.upper()
todo = 0
for url in urls(os.path.join(levels, 'a2'), sections):
    en = load(os.path.join(course, url, 'index.md'))[1]
    path = os.path.join(course, lang, url, 'index.md')
    if not os.path.exists(path):
        print(f'# !! {url}: no {X} original, skipped\n')
        continue
    xx = load(path)[1]
    if len(xx) != len(en):
        print(f'# !! {url}: {X} has {len(xx)} blocks, English has {len(en)}; skipped\n')
        continue
    lv = {l: load(os.path.join(levels, l, url, 'index.md'))[1] for l in LEVELS}
    print(f'@@ {url}')
    for i in range(len(en)):
        if all(lv[l][i] == en[i] for l in LEVELS):
            continue
        print(f'== {i}')
        print('EN: ' + enc(prose(en[i])[0]))
        print(f'{X}: ' + enc(prose(xx[i])[0]))
        for l in LEVELS:
            t = prose(lv[l][i])[0]
            if t == prose(en[i])[0]:
                print(f'{l.upper()}: =')
            else:
                print(f'{l.upper()}: TODO: ' + enc(t))
                todo += 1
    print()
print(f'{lang}: {todo} blocks to translate', file=sys.stderr)
