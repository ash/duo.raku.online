---
title: 'Solution: Сравнете стойности'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `is` сравнява две стойности. `'a'.uc` е стойността, която получавате. `'A'` е стойността, която очаквате.

1. Стойностите са еднакви, така че тестът минава. Ако тестът не мине, `is` отпечатва и двете стойности.

{% include nav.html %}
