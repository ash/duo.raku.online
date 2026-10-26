---
title: 'Розв''язання: Внутрішня сума'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Вивід

```
14
```

## Коментарі

1. `compute` використовує вкладений `add` два рази. `add(2, 3)` дає `5`, а `add(4, 5)` дає `9`.

1. Їхня сума — `14`. `compute` повертає це значення.

{% include nav.html %}
