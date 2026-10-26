---
title: 'Решение: Переопределение динамической переменной'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Исходный код можно найти в файле [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Вывод

```
INFO: working
DEBUG: working
```

## Комментарии

1. `task` вызывает `log-it`. Но она никогда не использует `$*prefix`. И всё же значение доходит до `log-it`. Динамический поиск идёт назад по стеку вызовов. Он проходит мимо `task`. Он доходит до кода, который в этот момент на стеке.

1. Два блока задают разные значения. Поэтому *один и тот же* вызов `task()` каждый раз даёт другой префикс. Вот почему динамические переменные полезны. Информация доходит до кода далеко внизу в цепочке вызовов. Ни одной подпрограмме в середине не нужно передавать её как аргумент.

{% include nav.html %}
