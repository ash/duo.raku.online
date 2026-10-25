---
title: Si numerus intra limites est
---

{% include menu.html %}

## Problema

Scribe programma quod usorem rogat ut tres numeros inserat: `$begin`, `$end` et `$n`. Imprimit `True`, si `$n` in intervallo `[$begin, $end)` est, aut `False`, si non est. Hoc intervallum `$begin` includit, sed `$end` excludit.

Assumere potes numeros insertos condicioni `$begin < $end + 1` satisfacere. Sed codicem ad id probandum noli addere.

## Exemplum

Infra exitum possibilem programmatis pro utroque casu videre potes:

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
