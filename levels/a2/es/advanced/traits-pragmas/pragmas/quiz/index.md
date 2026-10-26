---
title: Quiz — Pragmas
translations_gpt:
---

{% include menu.html %}

En Raku, la pragma `strict` está activada por defecto. No declaras una variable, pero le asignas un valor. Por ejemplo, `$x = 42`. ¿Qué pasa?

{:.quiz}
1 | Es un error en tiempo de compilación
0 | Crea `$x` silenciosamente
0 | Imprime una advertencia pero se ejecuta
0 | Establece `$x` en `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` está activada por defecto. Con ella, primero debes declarar cada variable con `my`. Así, `$x = 42` sin `my` no compila. El error es *Variable '$x' is not declared*. Con `no strict`, la pragma está desactivada. Entonces la asignación funciona.

</div>

{% include nav.html %}
