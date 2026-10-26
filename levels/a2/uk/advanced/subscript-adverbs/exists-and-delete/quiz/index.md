---
title: 'Тест — Наріччя індексів'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

Наріччя `:exists` питає, чи є такий ключ. Воно повертає `True` або `False`. У хеші немає ключа `z`. Тож відповідь — `False`.

</div>

{% include nav.html %}
