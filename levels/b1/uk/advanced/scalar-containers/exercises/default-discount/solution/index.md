---
title: 'Розв''язання: Типова знижка'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

## Код

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Вихідний код можна знайти у файлі [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Звісно, простіше було б одразу дати змінній значення `0`:

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

1. Трейт `is default(0)` дає контейнеру значення, яке він використовує, доки йому нічого не присвоєно. Коли ви читаєте змінну, ви отримуєте `0`. На відміну від неоголошеного типового значення, тут немає попередження _uninitialized value_.

1. Після присвоєння контейнер містить `15`, і типове значення вже не важливе.

{% include nav.html %}
