---
title: Quiz — De `...`-operator
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
say 1, 3, 9 ... 81;
```

{:.quiz}
1 | (1 3 9 27 81)
0 | (1 3 9 81)
0 | (1 3 5 7 ... 81)
0 | (3 9 27)

{% include quiz.html %}

<div class="extended-explanation">

Hier zijn er *drie* startwaarden. Dus kijkt `...` naar de verhouding ertussen. Dat is hoeveel keer groter elke waarde is. In `1, 3, 9` is elke waarde drie keer de vorige. Dus gaat de reeks verder als meetkundige reeks: `27, 81`. Met twee startwaarden krijg je in plaats daarvan een rekenkundige stap.

</div>

{% include nav.html %}
