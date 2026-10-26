---
title: Enteros
---

{% include menu.html %}

Has usado enteros desde el principio del curso. Esta sección trata algunas de sus características que es fácil pasar por alto.

La más importante es que los enteros en Raku tienen _precisión arbitraria_. No tienen un número fijo de bytes. Nunca se desbordan en silencio ni dan un resultado incorrecto. Si hay suficiente memoria, un entero puede crecer tanto como necesites:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Este es el valor exacto, no uno redondeado. Lo mismo ocurre cuando multiplicas números grandes. Por ejemplo, Raku calcula el factorial de 50 de forma exacta:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Puedes agrupar los dígitos de los números largos con guiones bajos. Así son más fáciles de leer en tu código. El compilador ignora los guiones bajos:

```raku
say 1_000_000; # 1000000
```

Los siguientes temas muestran cómo escribir enteros en otras bases numéricas. También presentan algunos métodos útiles para enteros.

{% include nav.html %}
