---
title: Quiz — Enumwaarden
translations_gpt: Dutch
---

{% include menu.html %}

Wat print het volgende programma?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` geeft het getal achter een constante terug. `.key` geeft echter de *naam* als een tekenreeks terug. `Tue.key` is dus `Tue`, en het getal `2` dat de constante kreeg, maakt niet uit.

</div>

{% include nav.html %}
