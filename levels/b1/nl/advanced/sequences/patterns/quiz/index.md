---
title: Quiz — De `...`-operator
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

Met *drie* startwaarden kijkt `...` naar de verhouding ertussen. In `1, 3, 9` is elke waarde drie keer de vorige. Dus gaat de reeks meetkundig verder: `27, 81`. Met twee startwaarden zou hij in plaats daarvan een rekenkundige stap nemen.

</div>

{% include nav.html %}
