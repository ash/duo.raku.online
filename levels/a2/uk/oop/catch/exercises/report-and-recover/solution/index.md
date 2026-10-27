---
title: 'Розв''язання: Повідомити й відновитися'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `die` кидає виняток. Тоді Raku пропускає решту блоку. Тож рядок `$timeout = 60` ніколи не виконується. `$timeout` зберігає своє типове значення, `30`.

1. `CATCH` обробляє виняток. Він виводить попередження. Тож програма не зупиняється. Вона працює далі з типовим значенням. Саме це й означає *відновитися* після помилки. Ви помічаєте проблему. Ви берете натомість щось безпечне. Потім ви йдете далі.

{% include nav.html %}
