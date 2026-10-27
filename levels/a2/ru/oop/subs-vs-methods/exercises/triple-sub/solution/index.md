---
title: 'Решение: Утроение как подпрограмма'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Здесь `triple` — это подпрограмма. Она существует сама по себе. Значение для работы она получает как аргумент.

1. Другое упражнение решает ту же задачу с помощью метода. Так вы можете сравнить два способа.

{% include nav.html %}
