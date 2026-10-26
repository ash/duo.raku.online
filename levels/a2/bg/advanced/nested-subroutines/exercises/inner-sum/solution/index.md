---
title: 'Solution: Вътрешна сума'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `compute` използва вложения `add` два пъти. `add(2, 3)` е `5`, а `add(4, 5)` е `9`.

1. Тяхната сума е `14`. `compute` връща тази стойност.

{% include nav.html %}
