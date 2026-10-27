---
title: 'Решение: Сообщите и восстановитесь'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Исходный код можно найти в файле [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Вывод

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Комментарии

1. Когда `die` бросает исключение, остаток блока пропускается. Поэтому строка `$timeout = 60` никогда не выполняется, и `$timeout` сохраняет значение по умолчанию `30`.

1. `CATCH` обрабатывает исключение и печатает предупреждение. Поэтому программа не останавливается и продолжает работу со значением по умолчанию. Именно это и значит *восстановиться* после ошибки. Вы отмечаете проблему, переходите к чему-то безопасному и продолжаете работу.

{% include nav.html %}
