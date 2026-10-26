---
title: 'Solution: Raccogliere fino al pieno'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Puoi trovare il codice sorgente nel file [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Output

```
[1 2 3 4]
```

## Commenti

1. Il ciclo riceve un intervallo di cento numeri. Gliene servono molti meno. Ma va bene così. Il ciclo si ferma da solo. Quando `$sum` diventa più grande di `10`, `last` esce dal ciclo. Il programma non guarda mai gli altri numeri.

1. L'ordine nel blocco è importante. Prima aggiungiamo il numero a `$sum`. Poi controlliamo il limite. Dopo prendiamo il numero. Un numero rende il totale più grande di `10`. Qui questo numero è `5`. Il codice non lo prende. Dopo `4`, il totale è esattamente `10`. Così la lista è `1, 2, 3, 4`.

1. Con `for`, `gather`/`take` può fermarsi in anticipo. `grep` non può farlo. `grep` guarda sempre tutta la lista. Qui scegliamo noi quando fermarci.

{% include nav.html %}
