---
title: 'Solution: Сравнете стойности'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Можете да намерите пълния код във файла [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Резултат

```
ok 1 - uppercase
1..1
```

## Коментари

1. `is` сравнява действителната стойност, `'a'.uc`, с очакваната стойност, `'A'`.

1. Те съвпадат, така че тестът минава. Ако тестът се провали, `is` би извело и двете стойности.

{% include nav.html %}
