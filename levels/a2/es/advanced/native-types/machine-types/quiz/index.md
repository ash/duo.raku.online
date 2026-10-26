---
title: Quiz — Tipos nativos
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Pregunta a un valor nativo sobre sí mismo, y Raku lo *encapsula* automáticamente. Pone el valor en el tipo completo correspondiente. El programa declara `$n` como un `int` nativo. Pero `.^name` pregunta por el nombre de su tipo. Así que obtienes el tipo encapsulado, `Int`.

</div>

{% include nav.html %}
