---
title: Alias di un array
translations_gpt:
---

{% include menu.html %}

## Problema

Hai questo array:

```raku
my @original = 10, 20, 30;
```

Crea un secondo nome, `@alias`, per lo _stesso_ array, senza copiarlo. Questa volta, aggiungi con `push` un nuovo elemento a `@original`, e poi stampa `@alias`. Questo mostra che l'alias vede anche i cambiamenti nella struttura, non solo nei valori.

## Esempio

Il programma stampa:

```
[10 20 30 40]
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
