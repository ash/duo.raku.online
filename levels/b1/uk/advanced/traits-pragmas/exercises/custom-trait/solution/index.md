---
title: 'Розв''язання: Власний трейт'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Трейт — це `multi sub trait_mod:<is>` з іменованим параметром `:$role!`. Завдяки цьому параметру він спрацьовує для `is role(...)`. Деякі трейти лише присутні чи відсутні, а цей *отримує* аргумент. Тут `is role('admin')` зв'язує `'admin'` із `$role`.

1. Тіло зберігає це значення під іменем підпрограми. Коли ви згодом читаєте `%role<login>`, ви отримуєте `admin`. Трейти виконуються під час компіляції, тож коли програма запускається, цей запис уже на місці.

{% include nav.html %}
