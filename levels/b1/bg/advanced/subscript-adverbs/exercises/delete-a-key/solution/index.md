---
title: 'Solution: Изтрийте ключ'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Наречието `:delete` премахва записа от хеша. То връща и стойността, но тук я игнорираме.

1. В началото хешът имаше три записа, а сега има `2`. Това показва, че един е премахнат. Броим с `.elems`, което не зависи от реда на ключовете. Затова изходът е винаги един и същ.

{% include nav.html %}
