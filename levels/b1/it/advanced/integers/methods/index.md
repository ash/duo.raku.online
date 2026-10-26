---
title: Metodi degli interi
---

{% include menu.html %}

Gli interi hanno molti metodi e routine utili. Eccone alcuni che ti serviranno spesso.

Il metodo `is-prime` controlla se un numero è primo:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

L'operatore `gcd` dà il massimo comun divisore di due numeri. L'operatore `lcm` dà il loro minimo comune multiplo:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Il metodo `abs` restituisce il valore assoluto di un numero. Il metodo `sign` restituisce `-1`, `0` o `1`. Questo dipende dal numero, che può essere negativo, zero o positivo:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
