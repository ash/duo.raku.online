---
title: Metodi degli interi
---

{% include menu.html %}

Gli interi hanno molti metodi e routine utili. Eccone alcuni. Li userai spesso.

Il metodo `is-prime` ti dice se un numero è primo:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Gli operatori `gcd` e `lcm` lavorano con due numeri. `gcd` dà il massimo comun divisore. È il numero più grande che divide tutti e due i numeri. `lcm` dà il minimo comune multiplo. È il numero più piccolo che puoi dividere per tutti e due i numeri:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Il metodo `abs` dà il valore assoluto. È il numero senza il segno meno. Il metodo `sign` dà `-1`, `0` o `1`. Dà `-1` per un numero negativo. Dà `0` per lo zero. Dà `1` per un numero positivo:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
