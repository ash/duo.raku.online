---
title: 'Solution: Tabella degli acquisti'
---

{% include menu.html %}

La tabella ha un'intestazione, che puoi stampare con un solo `say`. Poi ci sono varie righe con la stessa struttura. Ogni riga mostra il nome dell'articolo, il suo prezzo, la quantità e il costo totale.

Vuoi mantenere le righe in ordine. Per questo un array è una buona scelta per gli articoli. Ogni riga della tabella diventa così un elemento dell'array.

Al secondo livello, puoi salvare ogni record in un hash. L'hash ha alcuni campi con un nome: `name`, `price` e `quantity`.

Dopo questo, al programma serve solo un ciclo sugli articoli. Nel ciclo calcola i totali e stampa le righe della tabella.

## Codice

Ecco una possibile soluzione a questo compito:

```raku
my @items = [
    {
        name => 'Sedie',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tavoli',
        price => 50.18,
        quantity => 1,
    }
];

say "Articolo\tPrezzo\tN\tTotale";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Trova il programma nel file [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Output

```console
$ raku exercises/associatives/purchase-table.raku
Articolo	Prezzo	N	Totale
Sedie	$20.57	4	$82.28
Tavoli	$50.18	1	$50.18
```

{% include nav.html %}
