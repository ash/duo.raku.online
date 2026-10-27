---
title: 'Решение: Сообщите и восстановитесь'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `die` бросает исключение. Тогда Raku пропускает остаток блока. Поэтому строка `$timeout = 60` никогда не выполняется. `$timeout` сохраняет своё значение по умолчанию, `30`.

1. `CATCH` обрабатывает исключение. Он печатает предупреждение. Поэтому программа не останавливается. Она продолжает работу со значением по умолчанию. Это и значит *восстановиться* после ошибки. Вы отмечаете проблему. Вы берёте вместо этого что-то безопасное. Потом вы продолжаете работу.

{% include nav.html %}
