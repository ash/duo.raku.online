# What the level tools share: how a page splits into blocks, which part of a
# block is prose, and the plain-text spec format they read and write.
#
# A block is what lies between blank lines, outside fenced code, exactly as
# build.raku splits it; block N means the same thing in every language and at
# every level. A block may be prose that runs straight into a fence; only the
# prose part is ever rewritten.
import os, re, sys

LEVELS = ['a2', 'b1']


def split_blocks(body):
    blocks, cur, fence = [], [], False
    for line in body.split('\n'):
        if line.startswith('```'):
            fence = not fence
            cur.append(line)
            continue
        if line.strip() == '' and not fence:
            if cur:
                blocks.append('\n'.join(cur))
            cur = []
        else:
            cur.append(line)
    if cur:
        blocks.append('\n'.join(cur))
    return blocks


def load(path):
    """The page's front matter and its blocks."""
    src = open(path, encoding='utf-8').read()
    m = re.match(r'(---\n.*?\n---\n)(.*)$', src, re.S)
    return m.group(1), split_blocks(m.group(2))


def save(path, head, blocks):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    open(path, 'w', encoding='utf-8').write(head + '\n' + '\n\n'.join(blocks) + '\n')


def prose(block):
    """(the prose, the fenced code after it) of a block."""
    lines = block.split('\n')
    k = next((j for j, l in enumerate(lines) if l.startswith('```')), len(lines))
    return '\n'.join(lines[:k]), '\n'.join(lines[k:])


# Blocks a level never rewrites: code, quizzes, includes, indented code, the
# links to a program file or a solution, and one-word headings (## Problem,
# ## Code, ## 1).
def rewritable(block):
    p = prose(block)[0]
    if not p or p.startswith(('```', '{%', '{:', '    ', '🦋', '✅')):
        return False
    return not re.fullmatch(r'#+ (\S+|\* \* \*)', p)


def skipped(levels, url, lang):
    """Whether levels/skip.txt keeps this page out of LANG at the levels."""
    path = os.path.join(levels, 'skip.txt')
    if not os.path.exists(path):
        return False
    for line in open(path, encoding='utf-8'):
        f = line.split('#')[0].split()
        if f and f[0] == url and ('*' in f[1:] or lang in f[1:]):
            return True
    return False


def urls(root, sections):
    """Every page under root/<section> for the comma-separated sections."""
    out = []
    for s in sections.split(','):
        base = os.path.join(root, s)
        if not os.path.isdir(base):
            sys.exit(f'no such section: {base}')
        out += [os.path.relpath(dp, root) for dp, _, fs in os.walk(base) if 'index.md' in fs]
    return sorted(set(out))


# A spec keeps a block on one line: a line break is written \n, and a
# backslash that is really there (as in "\n" quoted in the course) is \\.
def enc(s): return s.replace('\\', '\\\\').replace('\n', '\\n')
def dec(s): return re.sub(r'\\([\\n])', lambda m: '\n' if m.group(1) == 'n' else '\\', s)


def read_spec(path, keep=('a2', 'b1')):
    """{url: {block: {level: text}}} from a spec. `== N` names a block by
    number; `<< text` by the start of its text (the older form). Lines
    starting with # and any other `XX:` line are notes and are skipped."""
    spec, subs = {}, {}
    url = key = None
    for n, line in enumerate(open(path, encoding='utf-8').read().split('\n'), 1):
        if not line.strip() or line.startswith('#'):
            continue
        if line.startswith('@@ '):
            url = line[3:].strip()
            spec.setdefault(url, {})
            subs.setdefault(url, [])
        elif line.startswith('== '):
            key = int(line[3:])
            spec[url].setdefault(key, {})
        elif line.startswith('<< '):
            key = line[3:]
            spec[url].setdefault(key, {})
        elif line.startswith('!! '):
            old, new = line[3:].split(' => ', 1)
            subs[url].append((old, new))
        elif re.match(r'^[A-Za-z][A-Za-z0-9]:', line):
            tag = line[:2].lower()
            if tag in keep:
                spec[url][key][tag] = dec(line[3:].strip())
        else:
            sys.exit(f'{path}:{n}: cannot read: {line}')
    return spec, subs
