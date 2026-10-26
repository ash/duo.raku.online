---
title: Tipizzato o non tipizzato
translations_gpt:
---

{% include menu.html %}

## Problema

Dichiarate due variabili scalari una accanto all'altra: `$untyped`, che non ha un tipo, e `$typed`, che ha il tipo `Int`. Fate il dump di tutte e due con `dd` mentre sono ancora vuote. Poi assegnate `42` a ciascuna e fate di nuovo il dump di tutte e due. Osservate bene come `dd` descrive in modo diverso i due contenitori.

## Esempio

Il programma stampa questo sullo standard error:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
