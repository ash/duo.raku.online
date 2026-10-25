---
title: 'Risinājums: Izveidot mainīgos no visiem zināmajiem tipiem'
---

{% include menu.html %}

Jūs droši vien nerakstāt šādas programmas īstā darbā. Bet jums jāzina, kā ieskatīties īstās programmās.

## Kods

Šeit ir iespējams risinājums. Tas izveido piecu augstāk minēto tipu mainīgos. Tad tas izdrukā to tipus.

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

Programma izdrukā šo:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
