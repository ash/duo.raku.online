---
title: 'Решение: Обработайте и продолжите'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Вывод

```
processed ok
skipped (bad): boom
processed ok
```

## Комментарии

1. Фазер `CATCH` находится внутри блока, который выполняется для каждого элемента. Поэтому он обрабатывает `die` только для этого одного элемента. Исключение обрабатывается там, поэтому оно не вырывается наружу и не останавливает весь цикл.

1. Это типичный случай, когда `CATCH` лучше, чем `try`. Сбой на одном проходе цикла обрабатывается прямо там, где он случился. Затем цикл переходит к следующему элементу. Средний элемент даёт сбой, но два элемента `ok` всё равно обрабатываются.

{% include nav.html %}
