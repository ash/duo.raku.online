---
title: La variabile topic
---

{% include menu.html %}

## Problema

`$_` è la variabile *topic*. Un ciclo `for` la imposta su ciascun elemento a turno. Una chiamata di metodo come `.chars` inizia con un punto e non ha un oggetto prima. Una chiamata così lavora su `$_`, quindi `.chars` significa `$_.chars`.

Fai un ciclo sulle tre stringhe `'apple'`, `'fig'` e `'cherry'`. Per ognuna, stampa una riga nella forma `<parola> has <n> letters`. Usa il topic `$_` per la parola. Per la sua lunghezza, usa una chiamata `.chars` con un punto all'inizio. Osserva come `$_` diventa ogni stringa a turno.

## Esempio

Il programma stampa:

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
