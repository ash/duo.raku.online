---
title: Entjeraj metodoj
translations_gpt:
---

{% include menu.html %}

Entjeroj havas multajn utilajn metodojn kaj rutinojn. Jen kelkaj el ili. Vi ofte uzos ilin.

La metodo `is-prime` diras al vi, ĉu nombro estas primo:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

La operatoroj `gcd` kaj `lcm` laboras kun du nombroj. `gcd` donas la plej grandan komunan divizoron. Tio estas la plej granda nombro, per kiu vi povas dividi ambaŭ nombrojn. `lcm` donas la plej malgrandan komunan oblon. Tio estas la plej malgranda nombro, kiun vi povas dividi per ambaŭ nombroj:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

La metodo `abs` donas la absolutan valoron. Tio estas la nombro sen ĝia minussigno. La metodo `sign` donas `-1`, `0` aŭ `1`. Ĝi estas `-1` por negativa nombro. Ĝi estas `0` por nulo. Ĝi estas `1` por pozitiva nombro:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
