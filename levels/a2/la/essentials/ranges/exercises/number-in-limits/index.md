---
title: Si numerus intra limites est
---

{% include menu.html %}

## Problema

Scribe programma. Programma ab usore tres numeros petit: `$begin`, `$end` et `$n`. Deinde probat an `$n` in intervallo `[$begin, $end)` sit. Hoc intervallum `$begin` continet, sed non `$end`. Programma `True` aut `False` imprimit.

Numeri huic condicioni satisfaciunt: `$begin < $end + 1`. De hoc certus esse potes. Noli codicem addere qui id probat.

## Exemplum

Hic est exitus possibilis programmatis in utroque casu:

```console
$ raku number-in-limits.raku
Ab (incluso): 10
Ad (excluso): 20
Quis est numerus? 15
Verum

$ raku number-in-limits.raku
Ab (incluso): 10
Ad (excluso): 20
Quis est numerus? 30
Falsum
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
