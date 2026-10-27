---
title: 'Розв''язання: Обробити й продовжити'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Фазер `CATCH` стоїть усередині блоку для одного елемента. Тож він обробляє `die` лише для цього елемента. Виняток обробляється саме там. Тож він ніколи не виходить із блоку. Він не може зупинити весь цикл.

1. Це типовий випадок для `CATCH`, а не для `try`. Один прохід циклу дає збій. Програма обробляє помилку прямо там. Потім цикл переходить до наступного елемента. Середній елемент дає збій. Але програма все одно обробляє два елементи `ok`.

{% include nav.html %}
