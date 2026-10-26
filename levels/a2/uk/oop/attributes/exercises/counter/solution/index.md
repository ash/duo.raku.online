---
title: 'Розв''язання: Лічильник'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Вихідний код можна знайти у файлі [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Вивід

```
0
5
```

## Коментарі

1. Атрибут має `is rw`. Тож його аксесор повертає контейнер, у який можна записувати. `= 0` дає атрибуту початкове значення. Перший `say` перевіряє новий лічильник. Він справді починає з типового значення, `0`.

1. В аксесор можна записувати. Тож `++` працює так, як ви чекаєте. Він додає 1 до лічильника.

{% include nav.html %}
