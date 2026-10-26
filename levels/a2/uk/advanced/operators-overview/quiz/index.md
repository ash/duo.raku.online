---
title: 'Тест — Пріоритет'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
say 2 * 3 ** 2;
```

{:.quiz}
1 | 18
0 | 36
0 | 12
0 | 81

{% include quiz.html %}

<div class="extended-explanation">

`**` має вищий пріоритет, ніж `*`. Тож Raku спершу обчислює степінь: `3 ** 2` дає `9`. Потім `2 * 9` дає `18`. Не читайте це зліва направо як `(2 * 3) ** 2`. Так виходить хибна відповідь, `36`.

</div>

{% include nav.html %}
