---
title: 'Solution: Contare in un bag'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Puoi trovare il codice sorgente nel file [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Output

```
2
6
```

## Commenti

1. `'the cat sat on the mat'.words` dà le sei parole. `bag` conta ogni parola. Il subscript `<the>` restituisce quante volte il bag ha visto `the`. La risposta è due.

1. Il metodo `total` somma tutti i conteggi. Questa somma è il numero di parole nel bag: `6`.

{% include nav.html %}
