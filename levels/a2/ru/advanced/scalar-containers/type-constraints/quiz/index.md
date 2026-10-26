---
title: Тест — Ограничения типов
---

{% include menu.html %}

Вот объявление контейнера:

```raku
my Int $int;
```

Какое присваивание ниже даёт ошибку при компиляции?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
