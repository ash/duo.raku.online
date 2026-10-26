---
title: 'Solution: Вътрешна сума'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Изходният код на тази програма можете да намерите във файла [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Изход

```
14
```

## Коментари

1. Вътре в `compute` вложеният `add` се използва два пъти: `add(2, 3)` е `5`, а `add(4, 5)` е `9`.

1. Тяхната сума, `14`, е това, което `compute` връща.

{% include nav.html %}
