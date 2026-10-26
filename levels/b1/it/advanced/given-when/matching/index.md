---
title: Matching di intervalli, tipi e condizioni
translations_gpt:
---

{% include menu.html %}

Un blocco `when` non controlla solo se due valori sono uguali. Fa uno _smart match_ tra il topic e il valore che gli dai. Così puoi confrontare intervalli, tipi e condizioni, non solo singoli valori.

## Intervalli

Un intervallo corrisponde quando il topic è al suo interno. Questo rende `given`/`when` una scelta naturale per dividere i numeri in gruppi:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Il valore `75` è nell'intervallo `70..79`, quindi il programma stampa:

```
C
```

## Tipi

Un tipo corrisponde quando il topic è di quel tipo. Così il programma può scegliere un ramo in base al tipo di valore che ha:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` contiene una stringa, quindi il programma stampa:

```
a string
```

## Condizioni

Puoi anche scrivere direttamente un confronto. Dentro il `when`, puoi usare il topic come `$_`. Così una condizione come `$_ < 0` corrisponde quando è vera:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Qui il primo `when` corrisponde, e il programma stampa:

```
negative
```

{% include nav.html %}
