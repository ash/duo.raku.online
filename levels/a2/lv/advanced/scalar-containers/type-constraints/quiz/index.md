---
title: Viktorīna — Tipu ierobežojumi
---

{% include menu.html %}

Šeit ir konteinera deklarācija:

```raku
my Int $int;
```

Kura piešķiršana zemāk dod kļūdu kompilācijas laikā?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
