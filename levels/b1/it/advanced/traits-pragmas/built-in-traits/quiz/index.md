---
title: Quiz — Trait
---

{% include menu.html %}

Quale trait permette a una subroutine di **cambiare la variabile del chiamante** attraverso un parametro?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | nessuno — i parametri sono scrivibili per impostazione predefinita

{% include quiz.html %}

<div class="extended-explanation">

Un parametro è in sola lettura di default, quindi non puoi assegnare un valore a un parametro semplice. `is rw` lega il parametro alla variabile stessa del chiamante. Così un cambiamento dentro la routine è visibile anche fuori. `is copy` invece ti darebbe una *copia* che puoi cambiare. La variabile del chiamante resterebbe intatta.

</div>

{% include nav.html %}
