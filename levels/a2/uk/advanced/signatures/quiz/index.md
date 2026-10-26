---
title: 'Тест — Всеїдні параметри'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
sub f($first, *@rest) {
    say @rest.elems;
}

f('a', 'b', 'c');
```

{:.quiz}
1 | 2
0 | 3
0 | 1
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Сталі параметри отримують свої значення раніше за всеїдний. `$first` бере `'a'`. Лише два інші аргументи, `'b'` і `'c'`, йдуть у `@rest`. Тож для цього масиву `.elems` дає `2`.

</div>

{% include nav.html %}
