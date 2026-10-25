---
title: Tipkonvertado por tipitaj variabloj
---

{% include menu.html %}

Tipaj limigoj estas sufiĉe striktaj. Ekzemple, vi ne povas asigni `Num` valoron al variablo deklarita kiel `Int`. Tio validas eĉ se la valoro estas tuta nombro:

```raku
my Int $x = 42;
# $x = 42e1; # Eraro
```

Uzu [unu el la metodoj](/eo/essentials/coercion/#topics-in-this-section) por konverti la valoron al la ĝusta tipo.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
