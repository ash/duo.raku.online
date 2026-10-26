---
title: Enteros
---

{% include menu.html %}

Has usado enteros desde el principio del curso. Los enteros son números sin decimales. Esta sección muestra algunas de sus características. Quizás no las notas al principio.

La característica más importante es la _precisión arbitraria_. Un entero en Raku no tiene un número fijo de bytes. Por eso nunca se desborda. En un desbordamiento, un número se hace demasiado grande. Entonces se vuelve incorrecto sin avisar. Con suficiente memoria, un entero puede ser tan grande como necesites:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Este valor es exacto. Raku no lo redondea. Lo mismo pasa cuando multiplicas números grandes. Por ejemplo, Raku calcula el factorial exacto de 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Los números largos son difíciles de leer en el código. Por eso puedes agrupar los dígitos con guiones bajos. El compilador ignora los guiones bajos:

```raku
say 1_000_000; # 1000000
```

Los siguientes temas muestran cómo escribir enteros en otras bases. La base 10 no es la única. También muestran algunos métodos útiles para enteros.

{% include nav.html %}
