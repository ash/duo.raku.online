---
title: 'Решение: Префикс сообщения'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Вывод

```
Error: timeout
```

## Комментарии

1. Метод `.message` объекта исключения возвращает текст, переданный в `die`.

1. Если присоединить его к концу `Error: `, получится итоговая строка. Объект исключения — это просто значение. Поэтому его сообщение можно использовать как угодно.

{% include nav.html %}
