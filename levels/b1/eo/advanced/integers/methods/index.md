---
title: Entjeraj metodoj
translations_gpt:
---

{% include menu.html %}

Entjeroj havas multajn utilajn metodojn kaj rutinojn. Jen kelkaj, kiujn vi ofte bezonos.

La metodo `is-prime` kontrolas, ĉu nombro estas primo:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

La operatoro `gcd` donas la plej grandan komunan divizoron de du nombroj. La operatoro `lcm` donas ilian plej malgrandan komunan oblon:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

La metodo `abs` redonas la absolutan valoron de nombro. La metodo `sign` redonas `-1`, `0` aŭ `1`. Tio dependas de tio, ĉu la nombro estas negativa, nulo aŭ pozitiva:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
