---
title: 'Решение: Докладвайте и се възстановете'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

🦋 Намерете програмата във файла [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Изход

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Коментари

1. Когато `die` хвърли изключение, останалата част от блока се пропуска. Затова редът `$timeout = 60` никога не се изпълнява и `$timeout` запазва стойността си по подразбиране `30`.

1. `CATCH` обработва изключението и отпечатва предупреждение. Затова програмата не спира и продължава със стойността по подразбиране. Точно това означава *възстановяване* от грешка. Отбелязвате проблема, връщате се към нещо безопасно и продължавате.

{% include nav.html %}
