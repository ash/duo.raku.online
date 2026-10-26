---
title: 'Solution: Частен помощник'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Помощникът `double` е вътре в `stats`. Затова той се вижда само там. Другите части на програмата не могат да го извикат.

1. `stats` го използва два пъти. `double(3)` е `6`, а `double(5)` е `10`. Тяхната сума е `16`.

{% include nav.html %}
