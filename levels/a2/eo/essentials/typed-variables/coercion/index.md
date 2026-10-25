---
title: Tipkonvertado por tipitaj variabloj
---

{% include menu.html %}

Tipaj limigoj estas reguloj por la tipoj de variabloj. Ĉi tiuj reguloj estas sufiĉe striktaj. Ekzemple, prenu variablon kun la tipo `Int`. Vi ne povas asigni `Num` valoron al ĝi. Tio validas eĉ se la valoro estas tuta nombro:

```raku
my Int $x = 42;
# $x = 42e1; # Eraro
```

Por konverti la valoron, uzu [unu el la metodoj](/eo/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
