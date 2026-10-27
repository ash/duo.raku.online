---
title: 'Решение: Мягкое обратное число'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Исходный код можно найти в файле [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Вывод

```
0.25
undefined
```

## Комментарии

1. `reciprocal(4)` работает обычным образом и возвращает `1 / 4`, то есть `0.25`.

1. `reciprocal(0)` вызывает `fail`, поэтому возвращает `Failure`, который не определён. Оператор `//` возвращает свою правую часть каждый раз, когда левая часть не определена. Так мы получаем запасное значение `undefined`.

1. Использование `//` считается обработкой сбоя. Оператор проверяет, определено ли значение, но не использует само значение. Поэтому `Failure` остаётся мягким и никогда не бросается как настоящее исключение.

{% include nav.html %}
