---
title: Operador ternario
---

{% include menu.html %}

En Raku, el operador ternario tiene dos partes: `??` ... `!!`. Primero viene una prueba booleana, y después vienen dos expresiones. Solo se ejecuta una de ellas, según el resultado de la prueba.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Con el valor que `$shines` tiene ahora, el programa imprime `day`. Si lo cambias a `Moon`, el programa imprime `night`.

Puedes encadenar expresiones ternarias. Solo asegúrate de que el código no se vuelva demasiado complicado.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Aquí, el programa imprime una parte diferente del día para diferentes valores de `$hours`.

{% include nav.html %}
