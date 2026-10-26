---
title: 'Розв''язання: Перекрийте динамічну'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `task` викликає `log-it`. Але вона ніколи не використовує `$*prefix`. Проте значення доходить до `log-it`. Динамічний пошук іде назад по стеку викликів. Він іде повз `task`. Він доходить до коду, який у цю мить є в стеку.

1. Два блоки задають різні значення. Тож *той самий* виклик `task()` щоразу дає інший префікс. Ось чому динамічні змінні корисні. Відомості доходять до коду далеко в ланцюжку викликів. Жодній підпрограмі посередині не треба передавати їх як аргумент.

{% include nav.html %}
