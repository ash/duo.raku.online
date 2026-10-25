---
title: Comparar con un rango
---

{% include menu.html %}

Toma un rango y una variable que guarda un valor entero:

```raku
my $r = 1..10;
my $v = 7;
```

El _operador de coincidencia inteligente_ `~~` te permite comprobar si el valor está dentro del rango:

```
say $v ~~ $r;
```

En este ejemplo, la condición es `True`, así que el programa imprime `True`.

{% include nav.html %}
