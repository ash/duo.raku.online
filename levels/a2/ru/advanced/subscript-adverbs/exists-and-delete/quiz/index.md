---
title: Тест — Наречия индексации
translations_gpt:
---

{% include menu.html %}

Что выведет эта программа?

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

Наречие `:exists` спрашивает, есть ли такой ключ. Оно возвращает `True` или `False`. В хеше нет ключа `z`. Поэтому ответ — `False`.

</div>

{% include nav.html %}
