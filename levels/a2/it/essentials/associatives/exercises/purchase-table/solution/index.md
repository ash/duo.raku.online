---
title: 'Solution: Tabella degli acquisti'
---

{% include menu.html %}

La tabella ha un'intestazione. Puoi stamparla con un solo `say`. Dopo l'intestazione ci sono alcune righe. Tutte le righe hanno le stesse parti. Ogni riga ha il nome di un articolo e il suo prezzo. Ha anche il numero di articoli e il loro costo totale.

L'ordine delle righe deve restare lo stesso. Quindi un array è un buon posto per gli articoli. Ogni riga della tabella è un elemento dell'array.

Al secondo livello, ogni articolo è un record. Puoi tenerlo in un hash. L'hash ha alcuni campi con un nome: `name`, `price` e `quantity`.

Il resto del programma è un ciclo sugli articoli. Per ogni articolo, il ciclo calcola il totale. Poi stampa una riga della tabella.

## Codice

Ecco un modo per risolvere il compito:

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
