---
title: 'Risinājums: Izveidot mainīgos no visiem zināmajiem tipiem'
---

{% include menu.html %}

Jūs, iespējams, praksē nerakstīsiet šāda veida programmas. Bet ir svarīgi zināt, kā ieskatīties īstu programmu daļās.

## Kods

Šeit ir iespējams risinājums. Tas izveido mainīgos no pieciem minētajiem tipiem un izdrukā to tipus.

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

🦋 Atrodiet programmu failā [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Izvade

Šī programma izdrukā sekojošu izvadi:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
