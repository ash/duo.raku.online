---
title: Divas funkcijas vienā modulī
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Izveidojiet moduli ar nosaukumu `Calc` failā `Calc.rakumod`. Tam jāeksportē divas apakšprogrammas, `add` un `mul`. Tās atgriež savu divu argumentu summu un reizinājumu.

Pēc tam uzrakstiet atsevišķu programmu, kas izmanto moduli. Tai jāizdrukā `add(3, 4)` un `mul(3, 4)`, katrs savā rindā.

## Piemērs

Ja to palaižat ar moduli uz meklēšanas ceļa, programma izdrukā:

```console
$ raku -I. calc.raku
7
12
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
