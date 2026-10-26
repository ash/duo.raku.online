---
title: 'Solution: Булева стойност'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
say ?0;
say ?5;
```

🦋 Можете да намерите пълния код във файла [boolean-of-a-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/boolean-of-a-value.raku).

## Резултат

```
False
True
```

## Коментари

1. `?` е префиксен оператор. Той стои преди своя операнд и връща булевата стойност на този операнд.

1. `0` е false, а `5` е true, затова програмата отпечатва `False` и `True`.

{% include nav.html %}
