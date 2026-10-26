---
title: 'Тест — Множини'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
say (set(1, 2) ∪ set(2, 3)).elems;
```

{:.quiz}
1 | 3
0 | 4
0 | 2
0 | 1

{% include quiz.html %}

<div class="extended-explanation">

Об'єднання бере кожне значення з обох множин. Але множина зберігає кожне значення лише один раз. Значення `2` є в обох множинах. Тож об'єднання — це `{1, 2, 3}`. Воно має три різні елементи.

</div>

{% include nav.html %}
