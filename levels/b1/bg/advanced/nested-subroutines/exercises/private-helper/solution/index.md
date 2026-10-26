---
title: 'Solution: Частен помощник'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Изходният код на тази програма можете да намерите във файла [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Изход

```
16
```

## Коментари

1. Помощникът `double` е дефиниран вътре в `stats`, затова е видим само там. Никоя друга част от програмата не може да го извика.

1. `stats` го използва два пъти: `double(3)` е `6`, а `double(5)` е `10`. Тяхната сума е `16`.

{% include nav.html %}
