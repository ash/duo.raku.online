---
title: 'Solution: Tabella degli acquisti'
---

{% include menu.html %}

## Codice

Ecco una possibile soluzione:

```raku
my $chair-price = 20.57;
my $chairs = 4;
my $chairs-total = $chair-price * $chairs;

my $table-price = 50.18;
my $tables = 1;
my $tables-total = $table-price * $tables;

say "Item\tPrice\tN\tTotal";
say "Chairs\t\$$chair-price\t$chairs\t\$$chairs-total";
say "Tables\t\$$table-price\t$tables\t\$$tables-total";
```

Tutti i numeri sono scritti direttamente nel codice e salvati in diverse variabili. Usiamo anche l'operatore di moltiplicazione `*` per calcolare il risultato. Impareremo di più sugli operatori nelle prossime sezioni del corso. Ma già ora, un codice come `$chair-price * $chairs` non dovrebbe creare dubbi.

Tre righe di codice stampano le tre righe della tabella, compresa l'intestazione. Nota come i caratteri di tabulazione `\t` separano le colonne. Nelle righe dei dati, puoi vedere anche un segno del dollaro escapato: `\$`. Ci sono anche diverse variabili che vogliamo interpolare.

🦋 Puoi trovare il codice sorgente nel file [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Output

Esegui il programma e vedi come stampa la tabella:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Commenti

Hai notato i trattini in nomi di variabili come `$chair-price` o `$tables-total`? In Raku, è un modo del tutto normale di dare nomi alle variabili.

Non farti confondere dai due segni del dollaro vicini. Raku li legge separatamente. Per esempio, in `\$$price`, il primo segno del dollaro è escapato, quindi rappresenta se stesso. Il secondo fa parte del nome della variabile `$price`.

Mettiamo tutte le stringhe tra doppi apici. Questo permette l'interpolazione delle variabili e dei caratteri speciali.

Torneremo su questo compito quando conosceremo gli array e gli hash.

{% include nav.html %}
