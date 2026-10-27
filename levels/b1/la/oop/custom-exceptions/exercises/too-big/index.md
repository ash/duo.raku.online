---
title: Nimis magnum
translations_gpt:
---

{% include menu.html %}

## Problema

Define classem exceptionis propriae `TooBig`. Ab `Exception` heredat et duo attributa habet, `value` et `limit`. Methodus eius `message` reddere debet `Value <value> exceeds the limit of <limit>`.

Deinde percurre valores `30`, `99` et `60`, cum limite `50`. Pro quoque valore iace `TooBig` solum si valor supra limitem est. Utere fasi `CATCH` cum `when TooBig` quae nuntium **et** alteram lineam imprimit. In illa linea attributum `limit` exceptionis directe legit. Imprimit `Try a value up to <limit>.`. Valor intra limitem simpliciter nuntiare debet se bonum esse.

Hoc ostendit solum numeros deficientes exceptionem facere. Ceteri numeri recta transeunt, et anulus utroque casu pergit.

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
