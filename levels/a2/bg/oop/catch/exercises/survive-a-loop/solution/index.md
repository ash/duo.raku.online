---
title: 'Решение: Преживейте цикъла'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Изход

```
ok: 1
caught: bad: 2
ok: 3
```

## Коментари

1. Фазерът `CATCH` обработва изключенията от тялото на цикъла. `die` във втората обиколка хвърля такова изключение. `CATCH` го прихваща. Затова грешката не спира програмата.

1. `CATCH` обработва изключението. После цикълът просто продължава със следващата стойност. Ето защо програмата пак отпечатва `ok: 3`.

{% include nav.html %}
