---
title: Error numeri negativi
translations_gpt:
---

{% include menu.html %}

## Problema

Define classem exceptionis propriae nomine `Negative`. Ab `Exception` heredat et attributum `n` habet. Methodus eius `message` reddit `<n> is negative`.

Scribe subprogramma `check($n)`. Cum argumentum eius infra nihil est, `Negative` iacit quae hoc `n` fert. Aliter argumentum reddit. Deinde in clausula voca `check(-5)`. Utere fasi `CATCH` cum `when Negative` ut nuntium exceptionis imprimas.

Denique, post clausulam, iace alteram `Negative` cum `n` ad `-10` posito. Nulla `CATCH` hunc locum custodit. Hoc ostendit talem exceptionem programma finire.

## Exemplum

Programma imprimit:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
