---
title: 'Решение: Пользовательский трейт'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Исходный код можно найти в файле [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Вывод

```
admin
```

## Комментарии

1. Типаж — это `multi sub trait_mod:<is>`. У него есть именованный параметр, `:$role!`. Из-за этого параметра подпрограмма выполняется для `is role(...)`. Некоторые типажи либо есть, либо их нет. Этот типаж другой. Он *получает* аргумент: `is role('admin')` отдаёт `'admin'` в `$role`.

1. Тело сохраняет это значение под именем подпрограммы. Позже `%role<login>` даёт `admin`. Типажи выполняются во время компиляции. Поэтому значение уже есть в хеше, когда программа работает.

{% include nav.html %}
