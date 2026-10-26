---
title: 'Тест — Виклик із двокрапкою'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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

Двокрапка бере *всю* решту оператора як список аргументів. Тож `substr: 0, 3` — це те саме, що `substr(0, 3)`, і передаються обидва аргументи. Він починає з індексу `0` і бере `3` символи, що дає `pro`.

</div>

{% include nav.html %}
