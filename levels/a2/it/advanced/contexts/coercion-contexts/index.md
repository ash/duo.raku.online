---
title: Contesto numerico, stringa e booleano
---

{% include menu.html %}

Tre contesti sono molto comuni. Nel primo, un valore agisce come un numero. Nel secondo, agisce come una stringa. Nel terzo, agisce come `True` o `False`. Ognuno di questi contesti ha un operatore prefisso. L'operatore va prima del valore. Imposta il contesto direttamente:

* `+` — contesto numerico: il valore agisce come un numero
* `~` — contesto stringa: il valore agisce come una stringa
* `?` — contesto Booleano: il valore agisce come `True` o `False`

Usali con un array. `+` dà la lunghezza dell'array. `~` dà i suoi elementi, con spazi tra loro. `?` ti dice se l'array ha elementi:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Un array vuoto è `0` in contesto numerico. In contesto Booleano, è `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Non devi sempre scrivere questi operatori. Spesso Raku imposta il contesto giusto per te. L'aritmetica mette i valori in contesto numerico. Unire stringhe li mette in contesto stringa. E `if`, `while`, `and` e `or` mettono la loro condizione in contesto Booleano:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Quindi `if @array { … }` funziona come ti aspetti. Un array con elementi è vero. Con gli operatori prefisso, chiedi tu stesso le stesse conversioni.

Puoi anche mettere `if` dopo l'istruzione. Allora il codice è breve e chiaro:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
