---
title: 'Решение: Сравнение значений'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Исходный код можно найти в файле [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Вывод

```
ok 1 - uppercase
1..1
```

## Комментарии

1. `is` сравнивает два значения. `'a'.uc` — это значение, которое вы получаете. `'A'` — это значение, которое вы ожидаете.

1. Значения одинаковые, поэтому тест проходит. Если тест не проходит, `is` печатает оба значения.

{% include nav.html %}
