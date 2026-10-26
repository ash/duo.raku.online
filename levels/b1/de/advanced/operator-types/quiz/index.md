---
title: Quiz — Operatorkategorien
translations_gpt:
---

{% include menu.html %}

Zu welcher Kategorie gehört der Subscript `[0]` im Ausdruck `@a[0]`?

{:.quiz}
0 | postfix
1 | postcircumfix
0 | circumfix
0 | infix

{% include quiz.html %}

<div class="extended-explanation">

Ein Subscript setzt Klammern um seinen Inhalt *und* kommt nach einem Term, hier nach `@a`. Deshalb ist er ein Postcircumfix-Operator. Ein einfacher Postfix wie `++` hat gar keine Klammern. Ein Circumfix wie der Array-Konstruktor `[1, 2, 3]` steht um etwas herum. Aber er kommt nicht nach einem Term.

</div>

{% include nav.html %}
