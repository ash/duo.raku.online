---
title: Operador ternario
---

{% include menu.html %}

El operador ternario en Raku tiene dos partes: `??` ... `!!`. Primero, hay una prueba booleana. Su resultado es `True` o `False`. Después de la prueba vienen dos expresiones. Raku ejecuta solo una de ellas. El resultado de la prueba elige cuál.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Con el valor actual de `$shines`, el programa imprime `day`. Cambia el valor a `Moon`. Entonces el resultado es `night`.

Puedes unir expresiones ternarias en una cadena. Pero no lo hagas demasiado difícil.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Aquí, el programa imprime una parte del día. La parte depende del valor de `$hours`.

{% include nav.html %}
