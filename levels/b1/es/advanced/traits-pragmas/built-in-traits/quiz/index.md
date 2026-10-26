---
title: Quiz — Traits
translations_gpt:
---

{% include menu.html %}

¿Qué trait permite que una subrutina **cambie la variable del llamador** a través de un parámetro?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | ninguno — los parámetros son modificables por defecto

{% include quiz.html %}

<div class="extended-explanation">

Un parámetro es de solo lectura por defecto, así que no puedes asignar un valor a un parámetro simple. `is rw` vincula el parámetro a la propia variable del llamador. Así, un cambio dentro de la rutina también es visible fuera. `is copy`, en cambio, te daría una *copia* que puedes cambiar. La variable del llamador quedaría intacta.

</div>

{% include nav.html %}
