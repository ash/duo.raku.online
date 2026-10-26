---
title: 'Розв''язання: Перекрийте динамічну'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

🦋 Вихідний код можна знайти у файлі [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Вивід

```
INFO: working
DEBUG: working
```

## Коментарі

1. `task` викликає `log-it`, але ніколи не згадує `$*prefix`. Проте значення доходить до `log-it`. Динамічний пошук іде назовні по стеку викликів, повз `task`. Він доходить до того, хто в цей час є в стеку.

1. Два блоки задають різні значення. Тож *той самий* виклик `task()` щоразу дає інший префікс. Саме це робить динамічні змінні корисними. Контекст доходить до глибоко вкладеного коду. Вам не треба передавати його як аргумент через кожну підпрограму посередині.

{% include nav.html %}
