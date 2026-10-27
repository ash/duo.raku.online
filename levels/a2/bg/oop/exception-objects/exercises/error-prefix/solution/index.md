---
title: 'Решение: Представка към съобщението'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Обектът на изключението има метод `.message`. Той дава текста, който сте подали на `die`.

1. Слагаме `Error: ` пред този текст. Така получаваме крайния ред. Обектът на изключението е просто стойност. Затова можете да използвате съобщението му както искате.

{% include nav.html %}
