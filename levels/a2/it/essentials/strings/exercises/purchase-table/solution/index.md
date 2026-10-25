---
title: 'Solution: Tabella degli acquisti'
---

{% include menu.html %}

## Codice

Ecco un modo per risolverlo:

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

Tutti i numeri sono scritti direttamente nel codice. Diverse variabili li conservano. Usiamo anche l'operatore di moltiplicazione `*` per avere il risultato. Imparerai di più sugli operatori nelle prossime sezioni del corso. Ma già ora, un codice come `$chair-price * $chairs` dovrebbe essere chiaro.

Tre righe di codice creano l'output. Stampano le tre righe della tabella. La prima riga è l'intestazione. Guarda le colonne. I caratteri di tabulazione `\t` le separano. Le righe dei dati hanno un segno del dollaro escapato: `\$`. Hanno anche diverse variabili. Vogliamo interpolare queste variabili.

🦋 Puoi trovare il codice sorgente nel file [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Output

Esegui il programma. Stampa la tabella:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Commenti

Hai visto i trattini in alcuni nomi di variabili? Guarda `$chair-price` o `$tables-total`. In Raku, questi nomi vanno benissimo.

A volte due segni del dollaro sono uno accanto all'altro. Non farti confondere. Raku li legge uno per uno. Guarda `\$$price`. Il primo segno del dollaro è escapato. Quindi è solo un segno del dollaro. Il secondo fa parte del nome della variabile `$price`.

Tutte le stringhe sono tra doppi apici. Così Raku può interpolare le variabili e i caratteri speciali.

Torniamo su questo compito più avanti. Prima impariamo gli array e gli hash.

{% include nav.html %}
