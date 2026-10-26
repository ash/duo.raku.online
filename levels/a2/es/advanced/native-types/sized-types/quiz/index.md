---
title: Quiz — Desbordamiento
---

{% include menu.html %}

¿Qué imprime este programa?

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

Un `int8` guarda valores de `-128` a `127`. Los valores también dan la vuelta por abajo. Toma el valor más pequeño y decreméntalo. No puedes obtener `-129`. Por eso el valor da la vuelta hasta el valor más grande, `127`.

</div>

{% include nav.html %}
