---
title: 'Решение: Классификация размера'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Исходный код можно найти в файле [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Вывод

```
small
medium
large
```

## Комментарии

1. Все три кандидата принимают один `Int`. Без конструкций `where` они конфликтуют. Raku не может выбрать между ними. Условия в первых двух делают их разными. Третий кандидат принимает все остальные числа.

1. Конструкции `where` проверяют `$n.abs`. Поэтому важна только величина числа, а не его знак. `size(7)` подходит к первому кандидату и даёт `small`. В `size(-250)` абсолютное значение равно `250`. Оно не проходит ни одно из двух условий. Поэтому оно идёт к последнему кандидату, который принимает всё остальное. Результат — `large`.

1. Raku проверяет кандидатов от самого конкретного к самому общему. Здесь это как раз их порядок в коде.

{% include nav.html %}
