---
title: Quiz — Enumwaarden
translations_gpt: Dutch
---

{% include menu.html %}

Wat print dit programma?

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

`.value` geeft het getal achter een constante. Maar `.key` geeft de *naam* als een tekenreeks. `Tue.key` is dus `Tue`. Het getal `2` van deze constante maakt hier niet uit.

</div>

{% include nav.html %}
