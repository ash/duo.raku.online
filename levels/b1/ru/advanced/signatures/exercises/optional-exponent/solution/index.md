---
title: 'Решение: Необязательная степень'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Исходный код можно найти в файле [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Вывод

```
25
125
```

## Комментарии

1. Знак `?` после `$exp` делает этот параметр необязательным. Поэтому `power` можно вызывать только с основанием.

1. Когда `$exp` не передан, он не определён, и `//` даёт запасное значение `2`. Поэтому `power(5)` возводит основание в квадрат и получает `25`. Если показатель степени есть, как в `power(5, 3)`, используется он. Результат — `125`.

{% include nav.html %}
