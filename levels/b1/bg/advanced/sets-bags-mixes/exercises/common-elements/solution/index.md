---
title: 'Solution: Общи елементи'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Самото сечение `$a ∩ $b` е множество, тук `{banana, cherry}`. Затова има `2` елемента. Ако предпочитате ASCII, напишете `(&)` вместо `∩`.

1. Сечението е множество, затова `∈` може да ви каже дали една стойност е в него. `apple` е само в първото множество, затова не е в сечението. Проверката връща `False`.

{% include nav.html %}
