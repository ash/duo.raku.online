---
title: 'Solutio: Septimanae usque ad Natalem'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Inveni codicem fontem in archivo [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Exitus

```
25 weeks and 6 days
```

## Commentarii

1. Cum unum `Date` ab altero subtrahis, numerum dierum inter eos accipis. Hic est `181`. Itaque dies in quoque mense ipse numerare non debes. Dies posterior primus scribitur, itaque eventus positivus est.

1. Divisio integra cum `div` numerum hebdomadum integrarum dat: `181 div 7` est `25`. Operator moduli `%` dies qui restant dat: `181 % 7` est `6`.

{% include nav.html %}
