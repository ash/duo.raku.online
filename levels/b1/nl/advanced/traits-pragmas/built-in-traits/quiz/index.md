---
title: 'Quiz — Traits'
translations_gpt:
---

{% include menu.html %}

Met welke trait kan een subroutine via een parameter **de variabele van de aanroeper wijzigen**?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | geen — parameters zijn standaard schrijfbaar

{% include quiz.html %}

<div class="extended-explanation">

Een parameter is standaard alleen-lezen, dus aan een gewone parameter kun je niets toekennen. `is rw` bindt de parameter aan de eigen variabele van de aanroeper. Een verandering binnen de routine is dus ook buiten zichtbaar. `is copy` zou je in plaats daarvan een *kopie* geven die je kunt veranderen. De variabele van de aanroeper zou dan onveranderd blijven.

</div>

{% include nav.html %}
