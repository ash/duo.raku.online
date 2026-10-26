---
title: 'Solution: Стойност по подразбиране на контейнер'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Намерете програмата във файла [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Резултат

```
0
0
```

## Коментари

1. Характеристиката `is default(0)` дава на контейнера стойност по подразбиране. Все още нищо не е присвоено, затова четенето на `$count` връща тази стойност. Ето защо първият ред отпечатва `0`.

1. `.VAR.default` пита самия контейнер за стойността по подразбиране, която е получил, а тя също е `0`. Без характеристиката стойността по подразбиране на контейнер без тип би била `(Any)`.

{% include nav.html %}
