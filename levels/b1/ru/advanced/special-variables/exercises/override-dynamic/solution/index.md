---
title: 'Решение: Переопределение динамической переменной'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. `task` вызывает `log-it`, но никогда не упоминает `$*prefix`. И всё же значение доходит до `log-it`. Динамический поиск идёт вверх по стеку вызовов, мимо `task`. Он доходит до того, кто в это время находится на стеке.

1. Два блока задают разные значения. Поэтому *один и тот же* вызов `task()` каждый раз даёт другой префикс. Именно это делает динамические переменные полезными. Контекст доходит до глубоко вложенного кода. Вам не нужно передавать его как аргумент через каждую подпрограмму между ними.

{% include nav.html %}
