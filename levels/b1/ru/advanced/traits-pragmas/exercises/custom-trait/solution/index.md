---
title: 'Решение: Пользовательский трейт'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Типаж — это `multi sub trait_mod:<is>` с именованным параметром `:$role!`. Благодаря этому параметру он срабатывает для `is role(...)`. Некоторые типажи могут только присутствовать или отсутствовать, а этот *получает* аргумент. Здесь `is role('admin')` привязывает `'admin'` к `$role`.

1. Тело сохраняет это значение под именем подпрограммы. Если потом прочитать `%role<login>`, вы получите `admin`. Типажи выполняются во время компиляции, поэтому запись уже есть, когда программа запускается.

{% include nav.html %}
