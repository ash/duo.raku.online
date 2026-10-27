---
title: 'Розв''язання: Потроєння підпрограмою'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Вихідний код можна знайти у файлі [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Вивід

```
21
```

## Коментарі

1. Тут `triple` — це підпрограма. Вона стоїть окремо. Значення для роботи вона отримує як аргумент.

1. Інша вправа розв'язує те саме завдання методом. Тож ви можете порівняти ці два способи.

{% include nav.html %}
