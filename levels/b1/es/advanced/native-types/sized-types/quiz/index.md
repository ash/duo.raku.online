---
title: Quiz — Desbordamiento
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Un `int8` guarda valores de `-128` a `127`. Los valores también dan la vuelta en el límite inferior. Si decrementas el valor más pequeño, no puedes obtener `-129`. Así que pasa al valor más grande, `127`.

</div>

{% include nav.html %}
