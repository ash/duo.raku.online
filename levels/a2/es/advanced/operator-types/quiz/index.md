---
title: Quiz — Categorías de operadores
translations_gpt:
---

{% include menu.html %}

Mira la expresión `@a[0]`. ¿Cuál es la categoría del subíndice `[0]`?

{:.quiz}
0 | postfix
1 | postcircumfix
0 | circumfix
0 | infix

{% include quiz.html %}

<div class="extended-explanation">

Un subíndice tiene corchetes alrededor de su contenido. *También* va después de un término, aquí `@a`. Por eso es un operador postcircumfijo. Un postfijo normal, como `++`, no tiene corchetes alrededor de nada. Un circumfijo está alrededor de algo. Pero no va después de un término. Un ejemplo es `[1, 2, 3]`. Crea un arreglo.

</div>

{% include nav.html %}
