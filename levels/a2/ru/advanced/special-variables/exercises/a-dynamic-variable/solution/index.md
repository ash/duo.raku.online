---
title: 'Решение: Динамическая переменная'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Исходный код можно найти в файле [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Вывод

```
running as guest
running as admin
```

## Комментарии

1. Твигил `*` делает переменную `$*user` динамической. `whoami` никогда не получает её как параметр. Она находит значение по стеку вызовов. Поэтому первый вызов показывает значение по умолчанию, `guest`.

1. Внутренний блок снова объявляет `$*user` как `admin`. Это действует, пока работает блок. *Та же самая* `whoami` теперь видит `admin`. Динамический поиск смотрит, кто сейчас на стеке вызовов. Вы перекрываете динамическую переменную в области видимости. Тогда весь код, который вы оттуда вызываете, получает больше прав. И вы совсем не меняете `whoami`.

{% include nav.html %}
