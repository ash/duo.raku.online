---
title: Diapazoni
---

{% include menu.html %}

Raku valodā diapazons izveido elementu sarakstu. Elementi iet pēc kārtas, viens pēc otra.

Vienkāršākajā gadījumā diapazons ir veselu skaitļu saraksts. Katrs skaitlis ir par 1 lielāks nekā iepriekšējais. Lai izveidotu diapazonu, izmantojiet operatoru `..` ar divām vērtībām. Pirmā vērtība ir diapazona mazākā vērtība. Otrā vērtība ir lielākā vērtība:

```raku
1 .. 5
```

Jums nav vajadzīgas atstarpes ap operatoru. Tāpēc to pašu diapazonu varat uzrakstīt arī šādi:

```raku
1..5
```

Diapazons izveido sarakstu. Bet pats diapazons ir viens objekts. Tāpēc jūs varat to glabāt skalārajā mainīgajā:

```raku
my $r = 1 .. 5;
```

## Ne tikai skaitļi

Jūs varat izveidot diapazonus arī no citiem datu tipiem. Tas strādā, ja Raku zina, kā iegūt nākamo vērtību. Piemēram:

```raku
my $letters = 'a' .. 'z';
```

Raku valodā diapazoniem ir savs datu tips. Mainīgajam `$r` ir tips `Range`.

{% include nav.html %}
