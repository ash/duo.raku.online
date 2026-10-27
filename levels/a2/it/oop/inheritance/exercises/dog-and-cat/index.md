---
title: Dipendenti e ruoli
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una classe base `Employee`. Questa è la classe genitrice delle altre classi. Ha un attributo `name` e due metodi. Il metodo `role` restituisce `'staff'`. Il metodo `badge` restituisce la stringa `<nome> - <ruolo>`. Per il ruolo, chiama il suo metodo `role`.

Poi crea due classi figlie, `Manager` e `Intern`. Ereditano da `Employee`. Ognuna sovrascrive `role`. Questo vuol dire che ha una sua versione di questo metodo. In `Manager`, `role` restituisce `'manager'`. In `Intern`, restituisce `'intern'`.

Stampa il badge di una manager di nome `Anna`. Poi stampa il badge di uno stagista di nome `Bob`.

## Esempio

Il programma stampa:

```
Anna - manager
Bob - intern
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
