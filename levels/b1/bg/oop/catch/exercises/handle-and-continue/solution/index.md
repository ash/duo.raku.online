---
title: 'Решение: Обработете и продължете'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Фазерът `CATCH` е вътре в блока, който се изпълнява за всеки елемент. Затова той обработва `die` само за този един елемент. Изключението се обработва там, така че то никога не излиза навън, за да спре целия цикъл.

1. Това е типичен случай, в който `CATCH` е по-добър от `try`. Провал в една обиколка на цикъла се обработва точно там, където се случва. После цикълът продължава към следващия елемент. Средният елемент се проваля, но двата елемента `ok` пак се обработват.

{% include nav.html %}
