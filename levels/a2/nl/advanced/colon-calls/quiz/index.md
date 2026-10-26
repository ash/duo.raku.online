---
title: Quiz — De dubbele-puntaanroep
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

De dubbele punt neemt de *hele* rest van de instructie. Dat alles wordt de lijst van argumenten. Dus is `substr: 0, 3` hetzelfde als `substr(0, 3)`. Beide argumenten gaan naar `substr`. Het begint bij index `0` en neemt `3` tekens. Het resultaat is `pro`.

</div>

{% include nav.html %}
