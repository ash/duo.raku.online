---
title: 'Solution: Ключ и стойност'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Можете да намерите изходния код във файла [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Изход

```
(x 10)
```

## Коментари

1. Наречието `:kv` връща ключа и стойността. То ги дава като списък.

1. При хеша ключът е името в индекса. Затова `%h<x>:kv` дава списъка `(x 10)`.

{% include nav.html %}
