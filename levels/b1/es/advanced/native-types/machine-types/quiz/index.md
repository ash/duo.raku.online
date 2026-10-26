---
title: Quiz — Tipos nativos
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

Cuando le preguntas a un valor nativo sobre sí mismo, Raku lo *encapsula* automáticamente. El valor pasa al tipo completo correspondiente. Aquí `$n` está declarado como un `int` nativo. Pero `.^name` aun así indica que su tipo es el `Int` encapsulado.

</div>

{% include nav.html %}
