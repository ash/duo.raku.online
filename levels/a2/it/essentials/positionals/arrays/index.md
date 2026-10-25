---
title: Array
---

{% include menu.html %}

Gli array sono tipi di dati aggregati. Questo vuol dire che un array può contenere più di un valore. Questo rende gli array diversi dagli [elementi scalari](/it/essentials/scalar-variables). Puoi indicizzare, o _sottoscrivere_, gli elementi di un array. In altre parole, ogni elemento ha una posizione. Per questo chiamiamo questo tipo di dati posizionali.

Le variabili array hanno un sigillo diverso: `@`. Le regole per il nome sono le stesse [degli scalari](/it/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Ora abbiamo un array. Il suo nome è `@cities`. Puoi metterci dentro alcuni valori:

```raku
@cities = 'Parigi', 'Roma', 'Berlino';
```

Puoi anche creare l'array già con i valori dentro:

```raku
my @cities = 'Parigi', 'Roma', 'Berlino';
```

## Indicizzazione

Per prendere un elemento di un array, usa una coppia di parentesi quadre. Mettile dopo il nome della variabile:

```raku
say @cities[1];
```

Nota che il sigillo non cambia. È sempre `@`. Raku conta gli elementi da zero. Così nel nostro esempio `@cities[1]` è `'Roma'`.

Gli array sono mutabili. Questo vuol dire che puoi cambiarli. Per cambiare un elemento, assegnagli un nuovo valore:

```raku
@cities[0] = 'Roma';
@cities[1] = 'Parigi';
```

Dopo questo, l'istruzione `say @cities[1]` stampa il nuovo valore, `'Parigi'`.

## Dimensione

Che cos'è la lunghezza di un array? È il numero dei suoi elementi. Per ottenerla, usa il metodo `elems`:

```raku
say @cities.elems; # 3
```

A volte usi un array dove Raku vuole un numero. Allora ottieni la dimensione dell'array:

```raku
say +@cities; # 3
```

Qui l'[operatore prefisso `+`](/it/essentials/coercion/prefixes) vuole un numero dal suo argomento. Così il risultato di `+@cities` è `3`.

{% include nav.html %}
