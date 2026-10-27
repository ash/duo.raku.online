---
title: Nimis magnum
translations_gpt:
---

{% include menu.html %}

## Problema

Fac classem exceptionis propriae `TooBig`. Haec est classis pro erroribus tuis. Ab `Exception` heredat. Duo attributa habet, `value` et `limit`. Methodus eius `message` reddere debet `Value <value> exceeds the limit of <limit>`.

Deinde scribe anulum per valores `30`, `99` et `60`. Limes est `50`. Iace `TooBig` solum cum valor maior quam limes est. Adde fasim `CATCH` cum `when TooBig`. Ea nuntium **et** alteram lineam imprimit. Pro hac linea attributum `limit` exceptionis directe legit. Altera linea est `Try a value up to <limit>.`. Pro valore intra limitem tantum imprime valorem bonum esse.

Vides: solum numeri deficientes exceptionem accipiunt. Ceteri numeri sine problemate transeunt. Utroque casu anulus pergit.

## Exemplum

Programma imprimit:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
