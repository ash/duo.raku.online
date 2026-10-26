---
title: 'Розв''язання: Типова знижка'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Вихідний код можна знайти у файлі [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Звісно, є простіше розв'язання. Дайте змінній значення `0`, коли ви її створюєте:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Вивід

```
0
15
```

## Коментарі

1. Трейт `is default(0)` дає контейнеру запасне значення. Контейнер використовує його, доки ви щось не присвоїте. Якщо ви читаєте змінну, ви отримуєте `0`. Без оголошеного типового значення ви отримуєте попередження _uninitialized value_. Тут такого попередження немає.

1. Після присвоєння контейнер зберігає `15`. Типове значення більше не важливе.

{% include nav.html %}
