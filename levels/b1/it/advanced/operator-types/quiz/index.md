---
title: Quiz — Categorie di operatori
---

{% include menu.html %}

A quale categoria appartiene l'indicizzazione `[0]` nell'espressione `@a[0]`?

{:.quiz}
0 | postfix
1 | postcircumfix
0 | circumfix
0 | infix

{% include quiz.html %}

<div class="extended-explanation">

Un indice mette delle parentesi intorno al suo contenuto *e* viene dopo un termine, qui `@a`. Per questo è un operatore postcircumfisso. Un semplice postfisso come `++` non ha parentesi intorno a niente. Un circumfisso, come il costruttore di array `[1, 2, 3]`, va intorno a qualcosa. Ma non viene dopo un termine.

</div>

{% include nav.html %}
