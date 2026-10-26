---
title: Waarden omzetten naar tekst
---

{% include menu.html %}

Als een programma een waarde toont, moet het die waarde omzetten naar tekst. Dat gebeurt als je de waarde met `say` toont, print, of in een string zet. Raku heeft niet maar één vaste manier om dit te doen. In plaats daarvan heeft elke waarde een paar standaardmethodes. Elk daarvan maakt een string voor een ander doel:

* `.gist` — een vorm die mensen makkelijk kunnen lezen. Dit is wat `say` afdrukt.
* `.Str` — de gewone stringvorm, voor plekken waar Raku een string nodig heeft.
* `.raku` — een codeachtige vorm, die handig is bij het debuggen.

Alle drie zijn gewone methodes die elke waarde in Raku heeft. Dus werken ze op dezelfde manier voor getallen, strings, arrays en je eigen objecten. De volgende pagina's bekijken elke methode een voor een. Daarna helpen ze je de juiste te kiezen. [Het deel daarna introduceert `dd`](/nl/advanced/dd), een Rakudo-hulpmiddel dat op `.raku` gebouwd is.

{% include nav.html %}
