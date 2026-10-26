---
title: 'Quiz — Traits'
translations_gpt:
---

{% include menu.html %}

Een subroutine wil via een parameter **de variabele van de aanroeper wijzigen**. Welke trait maakt dit mogelijk?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | geen — parameters zijn standaard schrijfbaar

{% include quiz.html %}

<div class="extended-explanation">

Normaal is een parameter alleen-lezen. Je kunt een gewone parameter dus geen nieuwe waarde geven. `is rw` verbindt de parameter met de eigen variabele van de aanroeper. Een verandering binnen de routine is dus ook buiten te zien. `is copy` werkt anders. Het geeft je een *kopie* die je kunt veranderen. De variabele van de aanroeper blijft hetzelfde.

</div>

{% include nav.html %}
