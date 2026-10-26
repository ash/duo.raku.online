---
title: Una variabile dinamica
---

{% include menu.html %}

## Problema

Una variabile dinamica ha il twigil `*`. Raku la cerca nello stack delle chiamate, non con lo scope lessicale. Quindi una subroutine può vedere valori diversi. Il valore dipende da chi chiama la subroutine. Così un blocco può far girare il codice che chiama come qualcun altro.

1. Dichiara una variabile dinamica `$*user` con il valore `'guest'`.
2. Scrivi una subroutine `whoami`. Stampa `running as ` e poi il valore attuale di `$*user`, per esempio `running as guest`. Non ha parametri. Deve leggere `$*user` direttamente.
3. Chiama `whoami` una volta al livello superiore. Mostra `guest`.
4. Poi crea un blocco. Dentro, dichiara di nuovo `$*user` come `'admin'`. Chiama lì la *stessa* `whoami`. Ora mostra `admin`.

## Esempio

Il programma stampa:

```
running as guest
running as admin
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
