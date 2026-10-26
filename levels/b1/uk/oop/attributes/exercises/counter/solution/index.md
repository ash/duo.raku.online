---
title: 'Розв''язання: Лічильник'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Атрибут оголошено з `is rw`, тож його аксесор повертає контейнер, у який можна записувати. `= 0` дає йому початкове значення. Перший `say` показує, що новий лічильник справді починає з цього типового значення, `0`.

1. В аксесор можна записувати, тож `++` може його збільшити. Це працює так, як ви й чекаєте.

{% include nav.html %}
