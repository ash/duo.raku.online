---
title: Methodi integrorum
---

{% include menu.html %}

Numeri integri multas methodos et functiones utiles habent. Ecce aliquae ex eis. Eas saepe adhibebis.

Methodus `is-prime` tibi dicit an numerus primus sit:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Operatores `gcd` et `lcm` cum duobus numeris operantur. `gcd` maximum communem divisorem dat. Hic est maximus numerus qui ambos numeros dividit. `lcm` minimum commune multiplum dat. Hic est minimus numerus quem per ambos numeros dividere potes:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Methodus `abs` valorem absolutum dat. Hic est numerus sine signo minus. Methodus `sign` dat `-1`, `0`, vel `1`. Pro numero negativo est `-1`. Pro nulla est `0`. Pro numero positivo est `1`:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
