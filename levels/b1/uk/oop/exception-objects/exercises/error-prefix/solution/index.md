---
title: 'Розв''язання: Префікс до повідомлення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Метод `.message` об'єкта винятку повертає текст, переданий до `die`.

1. Якщо приєднати його в кінець `Error: `, виходить підсумковий рядок. Об'єкт винятку — це просто значення. Тож його повідомлення можна використовувати як завгодно.

{% include nav.html %}
