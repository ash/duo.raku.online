---
title: Quiz — De dubbele-puntaanroep
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

De dubbele punt neemt de *hele* rest van de instructie als argumentenlijst. Dus is `substr: 0, 3` hetzelfde als `substr(0, 3)`, en beide argumenten worden doorgegeven. Het begint bij index `0` en neemt `3` tekens, wat `pro` geeft.

</div>

{% include nav.html %}
