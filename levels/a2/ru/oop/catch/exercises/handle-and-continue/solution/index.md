---
title: 'Решение: Обработайте и продолжите'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Фазер `CATCH` стоит внутри блока для одного элемента. Поэтому он обрабатывает `die` только для этого элемента. Исключение обрабатывается прямо там. Поэтому оно никогда не выходит из блока. Оно не может остановить весь цикл.

1. Это частый случай для `CATCH`, а не для `try`. Один проход цикла даёт сбой. Программа обрабатывает ошибку прямо там. Потом цикл переходит к следующему элементу. Средний элемент даёт сбой. Но программа всё равно обрабатывает два элемента `ok`.

{% include nav.html %}
