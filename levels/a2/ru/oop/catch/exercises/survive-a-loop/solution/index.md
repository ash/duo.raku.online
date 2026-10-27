---
title: 'Решение: Переживите цикл'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 Исходный код можно найти в файле [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Вывод

```
ok: 1
caught: bad: 2
ok: 3
```

## Комментарии

1. Фазер `CATCH` обрабатывает исключения из тела цикла. `die` на втором проходе бросает такое исключение. `CATCH` перехватывает его. Поэтому ошибка не завершает программу.

1. `CATCH` обрабатывает исключение. Потом цикл просто идёт дальше со следующим значением. Вот почему программа всё равно печатает `ok: 3`.

{% include nav.html %}
