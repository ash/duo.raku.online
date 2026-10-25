---
title: 'Risinājums: Klases galdi'
---

{% include menu.html %}

Risinājumu varat redzēt zemāk.

## Kods

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Pilnu kodu var atrast failā [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Izvade

Palaidiet programmu vismaz divas reizes. Izmēģiniet gan nepāra, gan pāra skolēnu skaitu. Piemēram, ievades skaitļiem `23` un `24` programma izdrukā vienādu rezultātu:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Komentāri

Nepietiek vienkārši izdalīt skolēnu skaitu ar divi. Programmai jāapstrādā gan nepāra, gan pāra skaitļi. Šeit ir viens iespējams veids, kā noapaļot skaitli uz augšu: `$students div 2 + $students % 2`. Kad skolēnu skaits ir pāra, otrā daļa ir nulle. Tad rezultāts ir puse no skolēnu skaita. Kad skaitlis ir nepāra, pirmā daļa joprojām ir vesels skaitlis. Tas ir tāpēc, ka mēs izmantojam `div`, nevis `/`. Un izteiksmes otrā daļa pievieno vienu papildu galdu.

{% include nav.html %}
