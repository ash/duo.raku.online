---
title: 'Solution: Booleano di un valore'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say ?0;
say ?5;
```

🦋 Puoi trovare il codice sorgente nel file [boolean-of-a-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/boolean-of-a-value.raku).

## Output

```
False
True
```

## Commenti

1. `?` è un operatore prefisso. Viene prima del suo operando. Restituisce il valore Booleano dell'operando.

1. `0` è falso e `5` è vero. Quindi il programma stampa `False` e `True`.

{% include nav.html %}
