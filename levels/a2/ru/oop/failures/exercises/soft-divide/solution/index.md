---
title: 'Решение: Мягкое обратное число'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `reciprocal(4)` работает как обычно. Она возвращает `1 / 4`. Это `0.25`.

1. `reciprocal(0)` вызывает `fail`. Поэтому она возвращает `Failure`. `Failure` — это неопределённое значение с ошибкой внутри. Оператор `//` смотрит на свою левую часть. Если левая часть не определена, `//` возвращает свою правую часть. Так мы получаем запасное значение, `undefined`.

1. Когда вы используете `//`, вы уже обрабатываете сбой. `//` только проверяет, определено ли значение. Он не использует значение. Поэтому `Failure` остаётся мягким. Raku никогда не бросает его как настоящее исключение.

{% include nav.html %}
