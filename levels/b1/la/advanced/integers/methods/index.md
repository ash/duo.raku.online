---
title: Methodi integrorum
---

{% include menu.html %}

Numeri integri multas methodos et functiones utiles habent. Hic sunt aliquae quas saepe requires.

Methodus `is-prime` probat an numerus primus sit:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Operator `gcd` maximum communem divisorem duorum numerorum dat. Operator `lcm` minimum commune multiplum eorum dat:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Methodus `abs` valorem absolutum numeri reddit. Methodus `sign` reddit `-1`, `0`, vel `1`. Hoc pendet ex eo an numerus negativus, nullus, vel positivus sit:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
