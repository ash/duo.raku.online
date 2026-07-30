#!/bin/sh
# Build duo.raku.online into www/.
#
#   ./build.sh                 build everything
#   ./build.sh --clean         wipe www/ first
#   RAKU_COURSE=/path ./build.sh
#
# The generator is Raku, run by rakupp (override with RAKUPP=…). It reads the
# course sources — Markdown and the table-of-contents YAML — from RAKU_COURSE,
# which defaults to ~/raku-course, and writes a self-contained static site.
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
RAKUPP="${RAKUPP:-rakupp}"

"$RAKUPP" build.raku "$@"

# The site is only ever as good as its alignment, so the checks are about that
# rather than about HTML validity.
WWW="$ROOT/www"

fail() { echo "$1" >&2; exit 1; }

[ -s "$WWW/index.html" ]        || fail "no home page"
[ -s "$WWW/words/index.html" ]  || fail "no words page"
[ -s "$WWW/404.html" ]          || fail "no 404 page"
[ -s "$WWW/data/tree.json" ]    || fail "no contents tree"
[ -s "$WWW/theme/langs.js" ]    || fail "no language manifest"
[ -s "$WWW/CNAME" ]             || fail "no CNAME"

# Every asset a page names must exist. A missing one is a 404 no page-level
# check would notice.
missing=0
for a in $(grep -rhoE '/theme/[A-Za-z0-9._-]+' "$WWW" --include='*.html' | sort -u); do
    [ -s "$WWW$a" ] || { echo "missing asset: www$a" >&2; missing=1; }
done
[ "$missing" = 0 ] || exit 1
echo "check: every referenced theme asset is present"

# Every page must carry the inlined translations; an empty payload means the
# generator silently produced a page nobody can read.
empty=$(grep -rl 'id="page-data">{}' "$WWW" --include='index.html' \
        | grep -v -e "^$WWW/index.html$" -e "^$WWW/words/index.html$" || true)
[ -z "$empty" ] || { echo "pages with no inlined data:" >&2; echo "$empty" >&2; exit 1; }
echo "check: every reading page carries its translations"

pages=$(find "$WWW" -name index.html | wc -l | tr -d ' ')
echo "www/ assembled — $pages pages."
