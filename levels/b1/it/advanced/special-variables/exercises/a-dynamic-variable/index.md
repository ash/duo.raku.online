---
title: Una variabile dinamica
---

{% include menu.html %}

## Problema

Una variabile dinamica si scrive con il twigil `*`. Raku la trova cercando verso l'esterno nello stack delle chiamate, non con lo scope lessicale. Quindi il valore che vede una subroutine dipende da chi l'ha chiamata. Questo permette a un blocco di eseguire il codice che chiama con un'identità diversa.

1. Dichiara una variabile dinamica `$*user` con il valore `'guest'`.
2. Scrivi una subroutine `whoami` che stampa `running as ` e poi il valore attuale di `$*user` (per esempio, `running as guest`). Non ha parametri, quindi deve leggere `$*user` direttamente.
3. Chiama `whoami` una volta al livello superiore. Mostra `guest`.
4. Poi crea un blocco che dichiara di nuovo `$*user` come `'admin'`. Dentro questo blocco, chiama di nuovo la *stessa* `whoami`. Ora mostra `admin`.

## Esempio

Il programma stampa:

```
running as guest
running as admin
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
