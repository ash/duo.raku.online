---
title: Argomenti nominati slurpy
---

{% include menu.html %}

## Problema

Scrivi una subroutine `describe`. Il suo primo parametro è un nome. Questo nome è posizionale e obbligatorio. Dopo il nome, un hash slurpy `*%opts` raccoglie un numero qualsiasi di argomenti nominati. La subroutine restituisce una stringa così: `name: key=value, key=value, ...`. La stringa elenca ogni opzione. Le chiavi sono in ordine alfabetico.

Chiamala così: `describe('Anna', colour => 'red', size => 5)`. Stampa il risultato.

## Esempio

Il programma stampa:

```
Anna: colour=red, size=5
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
