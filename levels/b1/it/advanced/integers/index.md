---
title: Interi
---

{% include menu.html %}

Hai usato gli interi fin dall'inizio del corso. Questa sezione mostra alcune loro caratteristiche che è facile non notare.

La più importante è che gli interi in Raku hanno _precisione arbitraria_. Non hanno un numero fisso di byte. Non vanno mai in overflow in silenzio con un risultato sbagliato. Se c'è abbastanza memoria, un intero può crescere quanto ti serve:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Questo è il valore esatto, non un valore arrotondato. Lo stesso vale quando moltiplichi numeri grandi. Per esempio, Raku calcola in modo esatto il fattoriale di 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Puoi raggruppare le cifre dei numeri lunghi con degli underscore. Così sono più facili da leggere nel tuo codice. Il compilatore ignora gli underscore:

```raku
say 1_000_000; # 1000000
```

I prossimi argomenti mostrano come scrivere gli interi in altre basi numeriche. Presentano anche alcuni metodi utili per gli interi.

{% include nav.html %}
