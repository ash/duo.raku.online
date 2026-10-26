---
title: Catenae
---

{% include menu.html %}

In parte Essentialium didicisti [quomodo chordas construas](/la/essentials/strings). Concatenationem, interpolationem, et longitudinem chordae vidisti. Chordae etiam magnam copiam methodorum habent. Haec sectio utilissimas colligit. Quaerere cum [expressionibus regularibus](/la/regexes) thema separatum et maius est. In sua parte postea tractatur.

Tres methodi casum litterarum in chorda mutant:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

Methodus `flip` ordinem characterum in chorda invertit:

```raku
say 'Raku'.flip; # ukaR
```

Et operator `x` chordam totiens repetit quotiens petis:

```raku
say 'ab' x 3; # ababab
```

Proxima themata ostendunt quomodo intra chordas quaeras. Etiam ostendunt quomodo chordas in partes dividas et iterum coniungas.

{% include nav.html %}
