---
title: 'Solution: Creare variabili di tutti i tipi conosciuti'
---

{% include menu.html %}

Probabilmente non scrivi programmi così nel lavoro vero. Ma devi sapere come guardare dentro i programmi veri.

## Codice

Ecco una possibile soluzione. Crea variabili dei cinque tipi qui sopra. Poi stampa i loro tipi.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'ten';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Trova il programma nel file [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Output

Il programma stampa questo:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
