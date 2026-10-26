---
title: 'Решение: Внутренняя сумма'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Вывод

```
14
```

## Комментарии

1. Внутри `compute` вложенная `add` используется дважды: `add(2, 3)` равно `5`, а `add(4, 5)` равно `9`.

1. Их сумма, `14`, — это то, что возвращает `compute`.

{% include nav.html %}
