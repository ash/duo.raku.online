---
title: 'Solution: Общи елементи'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Можете да намерите пълния код във файла [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Резултат

```
2
False
```

## Коментари

1. Сечението `$a ∩ $b` също е множество. Тук то е `{banana, cherry}`. Затова то има `2` елемента. Ако искате ASCII, напишете `(&)` вместо `∩`.

1. Сечението е множество. Затова `∈` може да провери дали една стойност е в него. `apple` е само в първото множество. Затова не е в сечението. Проверката връща `False`.

{% include nav.html %}
