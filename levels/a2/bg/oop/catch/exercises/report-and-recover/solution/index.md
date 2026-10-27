---
title: 'Решение: Докладвайте и се възстановете'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `die` хвърля изключение. Тогава Raku пропуска останалата част от блока. Затова редът `$timeout = 60` никога не се изпълнява. `$timeout` запазва стойността си по подразбиране, `30`.

1. `CATCH` обработва изключението. Той отпечатва предупреждение. Затова програмата не спира. Тя продължава със стойността по подразбиране. Това означава *възстановяване* от грешка. Отбелязвате проблема. Вместо това използвате нещо безопасно. После продължавате.

{% include nav.html %}
