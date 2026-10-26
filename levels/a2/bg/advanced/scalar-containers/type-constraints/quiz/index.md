---
title: Тест — Ограничения на типове
translations_gpt:
---

{% include menu.html %}

Ето декларацията на един контейнер:

```raku
my Int $int;
```

Кое присвояване по-долу дава грешка по време на компилация?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
