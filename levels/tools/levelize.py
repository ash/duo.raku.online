# levelize.py COURSE LEVELS SPEC
#
# Writes the English level pages, LEVELS/<level>/<url>/index.md, from a spec
# of rewritten prose (see ensheet.py). A level page is the original page with
# the spec's blocks replaced; everything else is copied. Every page the spec
# names is written, even one with nothing replaced.
#
#   == N             block N of the page; an OR: line under it must match the
#                    original, which catches a spec made from an older course
#   << start         the one block that starts so (the older form)
#   A2: / B1:        the block at that level; = keeps the original
#   !! old => new    a substitution applied to the page at every level
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import LEVELS, load, save, prose, read_spec

course, levels, spec_path = sys.argv[1:4]
spec, subs = read_spec(spec_path, keep=('a2', 'b1', 'or'))

for url, edits in spec.items():
    head, blocks = load(os.path.join(course, url, 'index.md'))
    where = {}
    for key, texts in edits.items():
        if isinstance(key, int):
            if key >= len(blocks):
                sys.exit(f'{url}: no block {key}')
            if 'or' in texts and texts['or'] != prose(blocks[key])[0].strip():
                sys.exit(f'{url}: block {key} is not what OR: says; remake the worksheet')
            where[key] = texts
        else:
            hits = [i for i, b in enumerate(blocks) if b.startswith(key)]
            if len(hits) != 1:
                sys.exit(f"{url}: '{key}' starts {len(hits)} blocks")
            where[hits[0]] = texts
    for lv in LEVELS:
        out = list(blocks)
        for i, texts in where.items():
            new = texts.get(lv)
            if new is None or new.startswith('TODO'):
                sys.exit(f'{url}: block {i} has no {lv} text')
            if new == '=':
                continue
            code = prose(blocks[i])[1]
            out[i] = new + ('\n' + code if code else '')
        text = head + '\n' + '\n\n'.join(out) + '\n'
        for old, new in subs.get(url, []):
            if old not in text:
                sys.exit(f"{url}: substitution '{old}' not found")
            text = text.replace(old, new)
        dest = os.path.join(levels, lv, url, 'index.md')
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        open(dest, 'w', encoding='utf-8').write(text)
print(f'{len(spec)} pages × {len(LEVELS)} levels written')
