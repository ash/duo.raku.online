---
title: 'Решение: Обработете и продължете'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Изход

```
processed ok
skipped (bad): boom
processed ok
```

## Коментари

1. Фазерът `CATCH` е вътре в блока за един елемент. Затова той обработва `die` само за този елемент. Изключението се обработва там. Затова то никога не излиза от блока. То не може да спре целия цикъл.

1. Това е чест случай за `CATCH`, а не за `try`. Една обиколка на цикъла се проваля. Програмата обработва грешката точно там. После цикълът продължава към следващия елемент. Средният елемент се проваля. Но програмата пак обработва двата елемента `ok`.

{% include nav.html %}
