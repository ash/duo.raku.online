---
title: 'Тест — Виклик із двокрапкою'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

Двокрапка бере *всю* решту оператора. Уся вона стає списком аргументів. Тож `substr: 0, 3` — це те саме, що `substr(0, 3)`. Обидва аргументи йдуть до `substr`. Він починає з індексу `0` і бере `3` символи. Результат — `pro`.

</div>

{% include nav.html %}
