---
title: 'Решение: sort через двоеточие'
translations_gpt: Решение задачи «Сортировка с двоеточием»
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Двоеточие передаёт ключ сортировки в `sort`. Скобки вокруг него не нужны.

1. `*.chars` — это выражение Whatever. Оно значит «количество символов каждого элемента». `sort` использует его как ключ. Поэтому первым идёт самое короткое слово: `fig` (3). Потом идут `pear` и `kiwi` (4). Потом идёт `apple` (5).

1. `pear` остаётся перед `kiwi`. У этих слов одинаковая длина. А `sort` — стабильная сортировка. Она сохраняет старый порядок элементов с равными ключами.

{% include nav.html %}
