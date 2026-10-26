---
title: 'Solution: Inverti e urla'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say 'raku'.flip.uc;
```

🦋 Puoi trovare il codice sorgente nel file [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Output

```
UKAR
```

## Commenti

1. I metodi lavorano da sinistra a destra. Prima `flip` trasforma `'raku'` in `'ukar'`. Poi `uc` lo trasforma in `'UKAR'`.

1. Ogni metodo restituisce una nuova stringa. Così puoi metterli in catena in una sola espressione.

{% include nav.html %}
