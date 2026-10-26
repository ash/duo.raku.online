---
title: Métodos de enteros
---

{% include menu.html %}

Los enteros tienen muchos métodos y rutinas útiles. Aquí tienes algunos. Los vas a usar a menudo.

El método `is-prime` te dice si un número es primo:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Los operadores `gcd` y `lcm` trabajan con dos números. `gcd` da el máximo común divisor. Es el número más grande que divide a los dos números. `lcm` da el mínimo común múltiplo. Es el número más pequeño que puedes dividir entre los dos números:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

El método `abs` da el valor absoluto. Es el número sin su signo menos. El método `sign` da `-1`, `0` o `1`. Da `-1` para un número negativo. Da `0` para el cero. Da `1` para un número positivo:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
