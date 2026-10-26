---
title: 'Розв''язання: Власний трейт'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Вихідний код можна знайти у файлі [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Вивід

```
admin
```

## Коментарі

1. Трейт — це `multi sub trait_mod:<is>`. Він має іменований параметр `:$role!`. Через цей параметр підпрограма спрацьовує для `is role(...)`. Деякі трейти просто є або їх немає. Цей трейт інший. Він *отримує* аргумент: `is role('admin')` передає `'admin'` у `$role`.

1. Тіло зберігає це значення під іменем підпрограми. Пізніше `%role<login>` дає `admin`. Трейти виконуються під час компіляції. Тож значення вже лежить у хеші, коли програма працює.

{% include nav.html %}
