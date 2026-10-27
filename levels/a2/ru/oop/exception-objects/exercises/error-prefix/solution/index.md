---
title: 'Решение: Префикс сообщения'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. У объекта исключения есть метод `.message`. Он даёт текст, который вы передали в `die`.

1. Мы ставим `Error: ` перед этим текстом. Так получается итоговая строка. Объект исключения — это просто значение. Поэтому его сообщение можно использовать как угодно.

{% include nav.html %}
