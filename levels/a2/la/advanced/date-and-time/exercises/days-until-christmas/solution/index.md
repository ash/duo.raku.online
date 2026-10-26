---
title: 'Solutio: Septimanae usque ad Natalem'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Unum `Date` ab altero subtrahere potes. Eventus est numerus dierum inter eos. Hic est `181`. Itaque dies cuiusque mensis ipse non numeras. Dies posterior primus venit. Itaque eventus positivus est.

1. Operator `div` numeros integros dividit. Numerum hebdomadum plenarum dat: `181 div 7` est `25`. Operator moduli `%` dat id quod post divisionem restat. Hi sunt dies reliqui: `181 % 7` est `6`.

{% include nav.html %}
