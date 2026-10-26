---
title: Тест — Наречия за индексиране
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

{:.quiz}
0 | True
1 | False
0 | Nil
0 | (Any)

{% include quiz.html %}

<div class="extended-explanation">

Наречието `:exists` пита дали ключът е там. То връща `True` или `False`. В хеша няма ключ `z`. Затова отговорът е `False`.

</div>

{% include nav.html %}
