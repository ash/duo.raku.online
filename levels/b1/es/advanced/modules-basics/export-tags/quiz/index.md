---
title: Quiz — Etiquetas de exportación
translations_gpt:
---

{% include menu.html %}

Un módulo declara `sub hello is export` y `sub goodbye is export(:partings)`. ¿Qué subrutinas puede llamar un programa directamente después de `use Greeting :partings;`?

{:.quiz}
1 | Solo `goodbye`
0 | Solo `hello`
0 | Tanto `hello` como `goodbye`
0 | Ninguna de las dos

{% include quiz.html %}

<div class="extended-explanation">

Si nombras una etiqueta, `use` importa ese grupo *en lugar del* predeterminado. Así que `:partings` trae `goodbye` pero deja fuera `hello`. Para obtener ambas, pedirías la etiqueta incorporada `:ALL` con `use Greeting :ALL;`.

</div>

{% include nav.html %}
