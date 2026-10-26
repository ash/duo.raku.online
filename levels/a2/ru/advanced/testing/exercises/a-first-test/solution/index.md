---
title: 'Решение: Первый тест'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Исходный код можно найти в файле [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Вывод

```
ok 1 - Raku has four letters
1..1
```

## Комментарии

1. Условие `'Raku'.chars == 4` истинно. Поэтому `ok` проходит.

1. `done-testing` печатает строку плана `1..1`. Она говорит, что запустился один тест.

{% include nav.html %}
