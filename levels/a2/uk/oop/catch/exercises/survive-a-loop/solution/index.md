---
title: 'Розв''язання: Пережити цикл'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Вивід

```
ok: 1
caught: bad: 2
ok: 3
```

## Коментарі

1. Фазер `CATCH` обробляє винятки з тіла циклу. `die` у другому проході кидає такий виняток. `CATCH` його перехоплює. Тож помилка не завершує програму.

1. `CATCH` обробляє виняток. Потім цикл просто йде далі з наступним значенням. Тому програма все одно виводить `ok: 3`.

{% include nav.html %}
