---
title: Typificatum vel non typificatum
---

{% include menu.html %}

## Problema

Declara duas variabiles scalares iuxta: `$untyped`, quae typum non habet, et `$typed`, quae typum `Int` habet. Ambas cum `dd` exscribe dum adhuc vacuae sunt. Deinde `42` utrique assigna et ambas iterum exscribe. Attente specta quam diverse `dd` duos continentes describat.

## Exemplum

Programma hoc ad errorem normalem imprimit:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
