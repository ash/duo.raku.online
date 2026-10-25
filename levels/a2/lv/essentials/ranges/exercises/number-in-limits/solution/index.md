---
title: 'Risinājums: Ja skaitlis ir robežās'
---

{% include menu.html %}

Programma izveido diapazonu no skaitļiem, ko ievada lietotājs. Tad smartmatch pārbauda, vai trešais skaitlis ir diapazonā. Šīs pārbaudes rezultāts ir Būla vērtība. Tāpēc mēs varam to uzreiz izdrukāt.

## Kods

Šeit ir risinājums:

```raku
my $begin = prompt 'No (ieskaitot): ';
my $end = prompt 'Līdz (neieskaitot): ';

my $n = prompt 'Kāds ir skaitlis? ';

say $n ~~ $begin ..^ $end;
```

🦋 Atrodiet programmu failā [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Izvade

Pārbaudiet dažādus gadījumus. Izmēģiniet arī skaitli, kas ir vienāds ar diapazona beigām.

```console
$ raku exercises/ranges/number-in-limits.raku
No (ieskaitot): 1
Līdz (neieskaitot): 2
Kāds ir skaitlis? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
No (ieskaitot): 100
Līdz (neieskaitot): 200
Kāds ir skaitlis? 100
True

$ raku exercises/ranges/number-in-limits.raku
No (ieskaitot): -5
Līdz (neieskaitot): -2
Kāds ir skaitlis? -2
False
```

## Komentārs

Ievērojiet, ka labais gals nav diapazona daļa: `$begin ..^ $end`.

{% include nav.html %}
