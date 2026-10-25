# ensheet.py COURSE SECTIONS > S/en.spec
#
# The worksheet for rewriting the English of some sections at the levels: every
# page under the comma-separated SECTIONS (as essentials/loops), and in it every
# block a level may rewrite, as
#
#   @@ essentials/loops/while
#   == 2
#   OR: the original English
#   A2: TODO
#   B1: TODO
#
# The writer replaces each TODO with the block at that level, or with = where
# the original is plain enough already. levelize.py builds the pages from it.
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import LEVELS, load, prose, rewritable, urls, enc

course, sections = sys.argv[1:3]
for url in urls(course, sections):
    _, blocks = load(os.path.join(course, url, 'index.md'))
    print(f'@@ {url}')
    for i, b in enumerate(blocks):
        if not rewritable(b):
            continue
        print(f'== {i}')
        print('OR: ' + enc(prose(b)[0]))
        for lv in LEVELS:
            print(f'{lv.upper()}: TODO')
    print()
