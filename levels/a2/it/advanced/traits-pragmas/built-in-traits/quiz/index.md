---
title: Quiz — Trait
---

{% include menu.html %}

Una subroutine vuole **cambiare la variabile del chiamante** attraverso un parametro. Quale trait lo rende possibile?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | nessuno — i parametri sono scrivibili per impostazione predefinita

{% include quiz.html %}

<div class="extended-explanation">

Normalmente un parametro è in sola lettura. Così non puoi assegnare un nuovo valore a un parametro semplice. `is rw` collega il parametro alla variabile del chiamante. Così un cambiamento dentro la routine si vede fuori. `is copy` funziona in un altro modo. Ti dà una *copia* che puoi cambiare. La variabile del chiamante resta uguale.

</div>

{% include nav.html %}
