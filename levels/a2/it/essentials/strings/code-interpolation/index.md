---
title: Interpolazione del codice
---

{% include menu.html %}

L'interpolazione di codice è il livello successivo di interpolazione. Puoi mettere del codice proprio dentro una stringa tra doppi apici. Il codice può essere semplice. Può essere anche complesso!

Scrivi il codice tra parentesi graffe, `{` e `}`:

```raku
my $a = 10;
my $b = 20;
say "La somma di $a e $b è {$a + $b}.";
```

Il programma stampa:

```console
$ raku t.raku 
La somma di 10 e 20 è 30.
```

## Ancora variabili

Ecco un uso di questo metodo. A volte una variabile ha del testo subito dopo. Per errore, Raku può leggere questo testo come parte del nome. Per evitarlo, metti la variabile tra parentesi graffe:

```raku
my $how-many = 5;
my $what = 'suit';
say "Ci sono $how-many {$what}s."; # Ci sono 5 suits.
```

Senza parentesi graffe, Raku prova a interpolare una variabile `$whats`. Ma questa variabile non esiste.

{% include nav.html %}
