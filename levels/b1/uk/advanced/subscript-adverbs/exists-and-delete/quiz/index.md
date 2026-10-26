---
title: 'Тест — Наріччя індексів'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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

Наріччя `:exists` перевіряє, чи є такий ключ, і повертає булеве значення. У хеші немає ключа `z`, тож відповідь — `False`.

</div>

{% include nav.html %}
