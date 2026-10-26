# respec.py COURSE LEVELS SECTIONS > S/en.spec
#
# The English spec of sections that already have their level pages, read back
# from those pages: every block a level may rewrite, with the original on an
# OR: line and the A2 and B1 text as the pages have it (= where a level kept
# the original). Feeding it to levelize.py writes the same pages again; it
# also serves as a worked example for whoever rewrites the next section.
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import LEVELS, load, prose, rewritable, urls, enc

course, levels, sections = sys.argv[1:4]
for url in urls(os.path.join(levels, 'a2'), sections):
    blocks = load(os.path.join(course, url, 'index.md'))[1]
    lv = {l: load(os.path.join(levels, l, url, 'index.md'))[1] for l in LEVELS}
    print(f'@@ {url}')
    for i, b in enumerate(blocks):
        if not rewritable(b):
            continue
        print(f'== {i}')
        print('OR: ' + enc(prose(b)[0]))
        for l in LEVELS:
            t = prose(lv[l][i])[0]
            print(f'{l.upper()}: ' + ('=' if t == prose(b)[0] else enc(t)))
    print()
