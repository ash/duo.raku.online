---
title: Quiz — Etiquetas de exportación
translations_gpt:
---

{% include menu.html %}

Un módulo tiene `sub hello is export` y `sub goodbye is export(:partings)`. Un programa tiene `use Greeting :partings;`. ¿Qué subrutinas puede llamar el programa directamente?

{:.quiz}
1 | Solo `goodbye`
0 | Solo `hello`
0 | Tanto `hello` como `goodbye`
0 | Ninguna de las dos

{% include quiz.html %}

<div class="extended-explanation">

Con una etiqueta, `use` importa su grupo *en lugar del* grupo predeterminado. Así que `:partings` trae `goodbye`, pero no `hello`. Para obtener las dos, pide la etiqueta incorporada `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
