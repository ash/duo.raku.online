---
title: 'Risinājums: Klases galdi'
---

{% include menu.html %}

Šeit ir risinājums.

## Kods

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Pilnu kodu var atrast failā [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Izvade

Palaidiet programmu divas vai vairāk reizes. Izmēģiniet nepāra skolēnu skaitu un pāra skaitu. Piemēram, izmēģiniet `23` un `24`. Abiem skaitļiem programma izdrukā vienu un to pašu rezultātu:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Komentāri

Jūs nevarat vienkārši izdalīt skolēnu skaitu ar divi. Programmai jāstrādā gan ar nepāra, gan ar pāra skaitļiem. Šeit ir viens veids, kā noapaļot skaitli uz augšu: `$students div 2 + $students % 2`. Izteiksmei ir divas daļas. Ja skolēnu skaits ir pāra, otrā daļa ir nulle. Tad rezultāts ir puse no skolēnu skaita. Bet, ja tas ir nepāra, pirmā daļa joprojām ir vesels skaitlis. Tas ir tāpēc, ka mēs izmantojam `div`, nevis `/`. Un otrā daļa pievieno vēl vienu galdu.

{% include nav.html %}
