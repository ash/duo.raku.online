---
title: Tipo de retorno
---

{% include menu.html %}

También puedes poner un tipo al resultado de una función. Hay varias formas de escribir esto en el código.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Elige la que más te guste. Mira el cuarto ejemplo. Allí, el tipo del resultado está dentro de los paréntesis. Los parámetros de la función también están allí.

{% include nav.html %}
