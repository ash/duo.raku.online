---
title: 'Решение: Необязательная степень'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Знак `?` после `$exp` делает его необязательным. Поэтому `power` можно вызвать только с основанием.

1. Если не передать `$exp`, он не определён. Тогда `//` даёт значение `2`. Поэтому `power(5)` возводит основание в квадрат и получает `25`. Теперь посмотрите на `power(5, 3)`. Здесь показатель степени есть. Поэтому код использует его и получает `125`.

{% include nav.html %}
