---
title: Array
---

{% include menu.html %}

Gli array sono tipi di dati aggregati, e questo vuol dire che possono contenere più di un valore. Questo li rende diversi dagli [elementi scalari](/it/essentials/scalar-variables). Gli elementi di un array si possono indicizzare (o _sottoscrivere_). In altre parole, ogni elemento ha una posizione. Per questo i dati di questo tipo hanno il nome generale di posizionali.

Per le variabili array c'è un altro sigillo: `@`. Le regole per il nome della variabile sono le stesse [degli scalari](/it/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

A questo punto abbiamo creato un array chiamato `@cities`. Puoi riempirlo con alcuni valori:

```raku
@cities = 'Parigi', 'Roma', 'Berlino';
```

Puoi anche dare subito i valori, quando crei l'array:

```raku
my @cities = 'Parigi', 'Roma', 'Berlino';
```

## Indicizzazione

Per ottenere un elemento di un array, aggiungi una coppia di parentesi quadre dopo il suo nome:

```raku
say @cities[1];
```

Nota che il sigillo rimane sempre lo stesso. Gli elementi si contano da zero, quindi nel nostro esempio l'elemento `@cities[1]` è `'Roma'`.

Gli array sono mutabili, e questo vuol dire che puoi cambiarli. Per cambiare un elemento, basta assegnargli un nuovo valore:

```raku
@cities[0] = 'Roma';
@cities[1] = 'Parigi';
```

Ora l'istruzione `say @cities[1]` stampa il nuovo valore, `'Parigi'`.

## Dimensione

La lunghezza di un array è il numero dei suoi elementi. Per ottenere la lunghezza attuale, usa il metodo `elems`:

```raku
say @cities.elems; # 3
```

Se un array appare dove ci si aspetta un numero, ottieni la sua dimensione:

```raku
say +@cities; # 3
```

Qui l'[operatore prefisso `+`](/it/essentials/coercion/prefixes) ha bisogno di un numero dal suo argomento. Per questo `+@cities` dà `3`.

{% include nav.html %}
