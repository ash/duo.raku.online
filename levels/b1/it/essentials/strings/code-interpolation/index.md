---
title: Interpolazione del codice
---

{% include menu.html %}

L'interpolazione di codice è il livello successivo di interpolazione. Ti permette di mettere del codice direttamente dentro una stringa tra doppi apici. Il codice può essere semplice, o anche complesso!

Il codice da interpolare va tra parentesi graffe:

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

Un uso di questo metodo è quando dopo una variabile deve esserci del testo. Quel testo potrebbe essere letto per errore come il resto del nome della variabile. Per evitarlo, metti la variabile tra parentesi graffe:

```raku
my $how-many = 5;
my $what = 'suit';
say "Ci sono $how-many {$what}s."; # Ci sono 5 suits.
```

Senza parentesi graffe, Raku cercherebbe di interpolare `$whats`, una variabile che non esiste.

{% include nav.html %}
