---
title: 'Розв''язання: Повідомити й відновитися'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

🦋 Вихідний код можна знайти у файлі [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Вивід

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Коментарі

1. Коли `die` кидає виняток, решта блоку пропускається. Тож рядок `$timeout = 60` ніколи не виконується, і `$timeout` зберігає типове значення `30`.

1. `CATCH` обробляє виняток і виводить попередження. Тож програма не зупиняється й продовжує роботу з типовим значенням. Саме це й означає *відновитися* після помилки. Ви помічаєте проблему, переходите на щось безпечне й рухаєтеся далі.

{% include nav.html %}
