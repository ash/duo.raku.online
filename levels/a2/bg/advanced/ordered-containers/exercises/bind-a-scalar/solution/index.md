---
title: 'Solution: Свържете скалар'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Свързването с `:=` не прави копие. То прави `$bound` второ име за контейнера на `$source`. Затова `$bound` вижда промяната на `$source`. Той отпечатва `9`.

1. Обикновеното присвояване с `=` копира стойността в друг контейнер. Затова по-късната промяна не засяга `$copy`. Той все още отпечатва `1`.

1. Това е смисълът на задачата. Виждате двата начина един до друг. `:=` споделя контейнер. `=` копира стойността.

{% include nav.html %}
