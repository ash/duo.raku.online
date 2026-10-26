---
title: 'Solution: Седмици до Коледа'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Можете да намерите пълния код във файла [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Резултат

```
25 weeks and 6 days
```

## Коментари

1. Когато извадите една `Date` от друга, получавате броя на дните между тях. Тук той е `181`. Така не е нужно сами да броите дните във всеки месец. По-късната дата е написана първа, затова резултатът е положителен.

1. Целочисленото деление с `div` дава броя на целите седмици: `181 div 7` е `25`. Операторът за остатък `%` дава дните, които остават: `181 % 7` е `6`.

{% include nav.html %}
