---
title: 'Розв''язання: Префікс до повідомлення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Вивід

```
Error: timeout
```

## Коментарі

1. Об'єкт винятку має метод `.message`. Він дає текст, який ви передали до `die`.

1. Ми ставимо `Error: ` перед цим текстом. Так виходить підсумковий рядок. Об'єкт винятку — це просто значення. Тож його повідомлення можна використовувати як завгодно.

{% include nav.html %}
