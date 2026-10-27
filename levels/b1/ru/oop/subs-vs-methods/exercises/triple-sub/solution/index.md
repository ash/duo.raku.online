---
title: 'Решение: Утроение как подпрограмма'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Исходный код можно найти в файле [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Вывод

```
21
```

## Комментарии

1. Как подпрограмма, `triple` существует сама по себе. Значение, с которым она работает, она получает как аргумент.

1. Второе упражнение из этой пары решает ту же задачу методом. Так что вы можете сравнить оба подхода.

{% include nav.html %}
