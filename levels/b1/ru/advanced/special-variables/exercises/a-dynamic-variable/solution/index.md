---
title: 'Решение: Динамическая переменная'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. Твигил `*` делает переменную `$*user` динамической. `whoami` никогда не получает её как параметр. Вместо этого она находит значение, когда ищет вверх по стеку вызовов. Поэтому первый вызов показывает значение по умолчанию, `guest`.

1. Внутренний блок снова объявляет `$*user` как `admin`, и это действует, пока работает блок. *Та же самая* `whoami` теперь видит `admin`. Это потому, что динамический поиск идёт за тем, кто сейчас находится на стеке. Если перекрыть динамическую переменную в области видимости, всё, что оттуда вызывается, получает больше прав. И вам совсем не нужно менять `whoami`.

{% include nav.html %}
