---
title: 'Решение: sort через двоеточие'
translations_gpt: Решение задачи «Сортировка с двоеточием»
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Исходный код можно найти в файле [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Вывод

```
(fig pear kiwi apple)
```

## Комментарии

1. Двоеточие передаёт ключ сортировки методу `sort`. Скобки вокруг ключа не нужны.

1. `*.chars` — это выражение Whatever, которое означает «количество символов каждого элемента». `sort` использует его как ключ, поэтому самые короткие слова идут первыми. Сначала идёт `fig` (3), затем `pear` и `kiwi` (4), а затем `apple` (5).

1. `pear` остаётся перед `kiwi`, потому что у обоих слов одинаковая длина. Кроме того, `sort` — стабильная сортировка, то есть она сохраняет исходный порядок равных ключей.

{% include nav.html %}
