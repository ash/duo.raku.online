---
title: 'Solution: Свържете скалар'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение на задачата.

## Код

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Можете да намерите изходния код във файла [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Резултат

```
9
1
```

## Коментари

1. Свързването с `:=` не прави копие. То прави `$bound` друго име за същия контейнер като `$source`. Затова промяната на `$source` се вижда чрез `$bound`, което отпечатва `9`.

1. Обикновеното присвояване с `=` копира стойността в отделен контейнер. Затова по-късната промяна не засяга `$copy` и той все още отпечатва `1`.

1. Целият смисъл е да видите двете едно до друго. `:=` споделя контейнер, а `=` прави копие на стойността.

{% include nav.html %}
