---
title: Quiz — Lista y escalar vs. lista y array
---

{% include menu.html %}

En las asignaciones de abajo, hay listas en el lado derecho. ¿Qué tipo de objetos guardan las variables?

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

Aquí hay un caso más difícil. No te preocupes si todavía no lo entiendes. Volveremos a este tema en la segunda parte del curso.

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
