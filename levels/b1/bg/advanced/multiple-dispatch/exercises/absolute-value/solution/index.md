---
title: 'Solution: Абсолютна стойност'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Можете да намерите изходния код във файла [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Изход

```
7
4
```

## Коментари

1. Първият кандидат съвпада само с отрицателни числа. Той връща стойността с обратен знак, която е положителна.

1. Всички други числа, тоест нулата и положителните числа, отиват към втория кандидат. Той връща стойността без никаква промяна.

{% include nav.html %}
