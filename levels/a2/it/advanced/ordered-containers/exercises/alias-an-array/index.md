---
title: Alias di un array
translations_gpt:
---

{% include menu.html %}

## Problema

Ecco un array:

```raku
my @original = 10, 20, 30;
```

Crea un secondo nome, `@alias`, per lo _stesso_ array. Non copiare l'array. Questa volta, aggiungi un nuovo elemento a `@original` con `push`. Poi stampa `@alias`. Questo mostra che l'alias non vede solo i nuovi valori. Vede anche i cambiamenti nella struttura dell'array.

## Esempio

Il programma stampa:

```
[10 20 30 40]
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
