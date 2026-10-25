---
title: Comparar con un rango
---

{% include menu.html %}

Aquí hay un rango y una variable. La variable tiene un valor entero:

```raku
my $r = 1..10;
my $v = 7;
```

Usa el _operador de coincidencia inteligente_ `~~`. Comprueba si el valor está en el rango:

```
say $v ~~ $r;
```

En este ejemplo, la condición es `True`. Así que el programa imprime `True`.

{% include nav.html %}
