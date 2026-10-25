---
title: Quiz — Lista y escalar vs. lista y array
---

{% include menu.html %}

Mira las asignaciones de abajo. En el lado derecho hay listas. ¿Qué tipo de objetos guardan las variables?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Elige las respuestas correctas:

{:.quiz-select}
(List) | El tipo de `$x` es&nbsp; (: (Array), (Int), (List) :)
(Array) | El tipo de `@x` es&nbsp; (: (Array), (Int), (List) :)

## 2*

Este caso es más difícil. Quizás no lo entiendes ahora. No te preocupes por eso. La segunda parte del curso vuelve a este tema.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Elige las respuestas correctas:

{:.quiz-select}
(Array) | El tipo de `$x` es&nbsp; (: (Array), (Int), (List) :)
(Array) | El tipo de `@x` es&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
