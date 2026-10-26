---
title: Quiz — Categorías de operadores
translations_gpt:
---

{% include menu.html %}

¿A qué categoría pertenece el subíndice `[0]` en la expresión `@a[0]`?

{:.quiz}
0 | postfix
1 | postcircumfix
0 | circumfix
0 | infix

{% include quiz.html %}

<div class="extended-explanation">

Un subíndice pone corchetes alrededor de su contenido *y* va después de un término, aquí `@a`. Eso lo convierte en un operador postcircumfijo. Un postfijo simple como `++` no tiene corchetes alrededor de nada. Un circumfijo, como el constructor de arreglos `[1, 2, 3]`, va alrededor de algo. Pero no va después de un término.

</div>

{% include nav.html %}
