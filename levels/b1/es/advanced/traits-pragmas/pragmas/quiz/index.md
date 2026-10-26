---
title: Quiz — Pragmas
translations_gpt:
---

{% include menu.html %}

La pragma `strict` de Raku está activada por defecto. ¿Qué pasa si asignas un valor a una variable que nunca declaraste, como en `$x = 42`?

{:.quiz}
1 | Es un error en tiempo de compilación
0 | Crea `$x` silenciosamente
0 | Imprime una advertencia pero se ejecuta
0 | Establece `$x` en `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` está activada por defecto. Te obliga a declarar primero cada variable con `my`. Así, `$x = 42` sin `my` no compila. El error es *Variable '$x' is not declared*. Si desactivas la pragma con `no strict`, la asignación funciona.

</div>

{% include nav.html %}
