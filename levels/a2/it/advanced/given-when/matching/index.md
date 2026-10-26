---
title: Matching di intervalli, tipi e condizioni
translations_gpt:
---

{% include menu.html %}

Un blocco `when` fa di più che controllare se due valori sono uguali. Fa uno _smart match_. Confronta il topic con il valore che gli dai. Così puoi confrontare intervalli, tipi e condizioni. Non sei limitato ai singoli valori.

## Intervalli

Un intervallo corrisponde quando il topic è dentro l'intervallo. Così `given`/`when` è utile per mettere i numeri in gruppi:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Il valore `75` è nell'intervallo `70..79`. Così il programma stampa:

```
C
```

## Tipi

Un tipo corrisponde quando il topic è di questo tipo. Così puoi scegliere cosa fare in base al tipo di valore:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` contiene una stringa. Così il programma stampa:

```
a string
```

## Condizioni

Puoi anche scrivere direttamente un confronto. Dentro `when`, il topic è `$_`. Così una condizione come `$_ < 0` corrisponde quando è vera:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Qui corrisponde il primo `when`. Il programma stampa:

```
negative
```

{% include nav.html %}
