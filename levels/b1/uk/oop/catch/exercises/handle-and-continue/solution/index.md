---
title: 'Розв''язання: Обробити й продовжити'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Вихідний код можна знайти у файлі [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Вивід

```
processed ok
skipped (bad): boom
processed ok
```

## Коментарі

1. Фазер `CATCH` стоїть усередині блоку, який виконується для кожного елемента. Тож він обробляє `die` лише для цього одного елемента. Виняток обробляється там, тому він ніколи не вибирається назовні й не зупиняє весь цикл.

1. Це типовий випадок, коли `CATCH` кращий за `try`. Збій в одному проході циклу обробляється там, де він стався. Потім цикл переходить до наступного елемента. Середній елемент дає збій, але два елементи `ok` усе одно обробляються.

{% include nav.html %}
