---
title: 'Solution: Стойност по подразбиране на контейнер'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Характеристиката `is default(0)` дава на контейнера стойност по подразбиране. Програмата не присвоява нищо на `$count`. Затова `$count` връща стойността по подразбиране. Първият ред отпечатва `0`.

1. `.VAR.default` пита контейнера за стойността му по подразбиране. Тя също е `0`. Без характеристиката стойността по подразбиране е друга. Тогава контейнер без тип има стойност по подразбиране `(Any)`.

{% include nav.html %}
