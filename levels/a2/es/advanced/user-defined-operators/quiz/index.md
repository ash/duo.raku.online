---
title: Quiz — Definir un operador
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` define un operador nuevo. Lo escribes entre sus dos operandos. Su cuerpo los multiplica. Así, `6 times 7` da `42`. Un operador es solo una subrutina con un nombre especial.

</div>

{% include nav.html %}
