---
title: Tipo de retorno
---

{% include menu.html %}

También puedes dar un tipo explícito al resultado de una función. Hay algunas formas de escribir esto en el código.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Elige la que más te guste. Fíjate en el cuarto ejemplo. Allí, el tipo de retorno está dentro de los paréntesis, junto con los parámetros de la función.

{% include nav.html %}
