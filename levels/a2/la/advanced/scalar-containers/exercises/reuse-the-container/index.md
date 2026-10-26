---
title: Typificatum vel non typificatum
---

{% include menu.html %}

## Problema

Declara duas variabiles scalares iuxta. Prima est `$untyped`. Typum non habet. Secunda est `$typed`. Typum `Int` habet. Ambas cum `dd` exscribe dum adhuc vacuae sunt. Deinde `42` utrique assigna. Ambas iterum exscribe. Output attente specta. `dd` duos continentes diversis modis describit.

## Exemplum

Programma hoc in flumen erroris normalis imprimit:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
