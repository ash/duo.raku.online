---
title: Métodos de enteros
---

{% include menu.html %}

Los enteros tienen muchos métodos y rutinas útiles. Aquí tienes algunos que vas a necesitar a menudo.

El método `is-prime` comprueba si un número es primo:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

El operador `gcd` da el máximo común divisor de dos números. El operador `lcm` da su mínimo común múltiplo:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

El método `abs` devuelve el valor absoluto de un número. El método `sign` devuelve `-1`, `0` o `1`. Esto depende de si el número es negativo, cero o positivo:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
