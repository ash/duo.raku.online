---
title: Quiz — Traits
translations_gpt:
---

{% include menu.html %}

Una subrutina quiere **cambiar la variable del llamador** a través de un parámetro. ¿Qué trait lo hace posible?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | ninguno — los parámetros son modificables por defecto

{% include quiz.html %}

<div class="extended-explanation">

Normalmente, un parámetro es de solo lectura. Así, no puedes asignar un valor nuevo a un parámetro simple. `is rw` conecta el parámetro con la propia variable del llamador. Así, un cambio dentro de la rutina se ve fuera. `is copy` funciona de otra forma. Te da una *copia* que puedes cambiar. La variable del llamador no cambia.

</div>

{% include nav.html %}
