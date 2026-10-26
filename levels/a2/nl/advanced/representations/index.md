---
title: Waarden omzetten naar tekst
---

{% include menu.html %}

Soms toont een programma een waarde. Je kunt hem met `say` tonen, printen of in een string zetten. In al deze gevallen moet de waarde tekst worden. Raku heeft niet maar één vaste manier om dit te doen. In plaats daarvan heeft elke waarde een paar standaardmethodes. Elke methode maakt een string voor een ander doel:

* `.gist` — een vorm voor mensen om te lezen. `say` drukt deze vorm af.
* `.Str` — de gewone stringvorm. Raku gebruikt die als het een string nodig heeft.
* `.raku` — een vorm die op code lijkt. Die is handig als je een programma debugt.

Alle drie zijn gewone methodes. Elke waarde in Raku heeft ze. Dus werken ze op dezelfde manier voor elke waarde. Dat kan een getal, een string of een array zijn. Het kan ook een eigen object zijn. De volgende pagina's tonen elke methode, een voor een. Daarna helpen ze je de juiste te kiezen. [Het deel daarna gaat over `dd`](/nl/advanced/dd). Dit is een hulpmiddel in Rakudo. Het is gebouwd op `.raku`.

{% include nav.html %}
