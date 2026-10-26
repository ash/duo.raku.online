---
title: La variabile topic
---

{% include menu.html %}

## Problema

`$_` è la variabile *topic*. Un ciclo `for` la imposta su ogni elemento, uno dopo l'altro. Alcune chiamate di metodo iniziano con un punto, come `.chars`. Prima del punto non c'è niente. Una chiamata così lavora su `$_`. Quindi `.chars` vuol dire `$_.chars`.

Fai un ciclo su tre stringhe: `'apple'`, `'fig'` e `'cherry'`. Per ogni stringa, stampa una riga così: `<parola> has <n> letters`. Usa il topic `$_` per la parola. Per la sua lunghezza, usa la chiamata `.chars`. Inizia con un punto. Guarda come `$_` diventa ogni stringa, una dopo l'altra.

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
