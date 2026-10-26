---
title: Quiz — Entrecomillado
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
say q{a\nb};
```

{:.quiz}
1 | a\nb
0 | a<newline>b
0 | ab
0 | anb

{% include quiz.html %}

<div class="extended-explanation">

El operador `q` funciona como las comillas simples. No procesa secuencias de escape con barra invertida como `\n`. Por eso la cadena conserva los cuatro caracteres: `a`, `\`, `n`, `b`. Solo una forma que interpola convierte `\n` en un salto de línea real. Dos ejemplos son `qq` y las comillas dobles.

</div>

{% include nav.html %}
