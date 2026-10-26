---
title: 'Solution: Изтрийте ключ'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Можете да намерите изходния код във файла [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Изход

```
2
```

## Коментари

1. Наречието `:delete` премахва записа от хеша. То връща и стойността, но тук ние не я използваме.

1. Отначало хешът имаше три записа. Сега има `2`. Значи един запис е изчезнал. Броим записите с `.elems`. Редът на ключовете няма значение за това. Затова изходът е винаги един и същ.

{% include nav.html %}
