---
title: Тест — Ограничения на типове
translations_gpt:
---

{% include menu.html %}

Контейнерът е деклариран така:

```raku
my Int $int;
```

Кое от присвояванията по-долу дава грешка при компилация?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
