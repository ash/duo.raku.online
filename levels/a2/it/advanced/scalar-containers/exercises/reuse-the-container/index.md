---
title: Tipizzato o non tipizzato
translations_gpt:
---

{% include menu.html %}

## Problema

Dichiarate due variabili scalari una accanto all'altra. La prima è `$untyped`. Non ha un tipo. La seconda è `$typed`. Ha il tipo `Int`. Fate il dump di tutte e due con `dd` quando sono ancora vuote. Poi assegnate `42` a ciascuna. Fate di nuovo il dump di tutte e due. Guardate bene l'output. `dd` descrive i due contenitori in modi diversi.

## Esempio

Il programma stampa questo sul flusso di errore standard:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
