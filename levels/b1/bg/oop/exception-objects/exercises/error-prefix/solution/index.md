---
title: 'Решение: Представка към съобщението'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Намерете програмата във файла [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Изход

```
Error: timeout
```

## Коментари

1. Методът `.message` на обекта на изключението връща текста, подаден на `die`.

1. Като го добавим след `Error: `, получаваме крайния ред. Обектът на изключението е просто стойност. Затова можете да използвате съобщението му както искате.

{% include nav.html %}
