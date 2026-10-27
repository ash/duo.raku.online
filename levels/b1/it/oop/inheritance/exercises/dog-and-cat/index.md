---
title: Dipendenti e ruoli
translations_gpt:
---

{% include menu.html %}

## Problema

Definisci una classe base `Employee` con un attributo `name` e due metodi. Il metodo `role` restituisce `'staff'`. Il metodo `badge` restituisce la stringa `<nome> - <ruolo>` e usa il proprio metodo `role`.

Poi definisci due classi figlie, `Manager` e `Intern`, che ereditano da `Employee`. Sovrascrivono `role`: restituisce `'manager'` in `Manager` e `'intern'` in `Intern`.

Stampa i badge di una manager di nome `Anna` e di uno stagista di nome `Bob`.

## Esempio

Il programma stampa:

```
Anna - manager
Bob - intern
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
