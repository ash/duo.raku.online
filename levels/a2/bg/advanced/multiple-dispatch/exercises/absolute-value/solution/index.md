---
title: 'Solution: Абсолютна стойност'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Първият кандидат работи само за отрицателни числа. Той връща числото с обратен знак. Тази стойност е положителна.

1. Всички други числа отиват към втория кандидат. Това са нулата и положителните числа. Вторият кандидат връща стойността такава, каквато е.

{% include nav.html %}
