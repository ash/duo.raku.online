---
title: Quiz — Valores enumerationum
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

`.value` numerum post constantem dat. Sed `.key` *nomen* eius ut chordam dat. Itaque `Tue.key` est `Tue`. Numerus `2` huius constantis hic non interest.

</div>

{% include nav.html %}
