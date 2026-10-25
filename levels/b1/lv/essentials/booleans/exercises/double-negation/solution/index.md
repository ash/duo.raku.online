---
title: 'Risinājums: Dubultā noliegšana'
---

{% include menu.html %}

Lai atrisinātu uzdevuma otro daļu, paplašināsim programmu. Mēs varam atkal izmantot to pašu mainīgo:

## Kods

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Pilnu kodu var atrast failā [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Komentāri

Pirms jūs palaižat programmu, padomāsim, ko tā izdrukās. Pirms mainīgā ir divi nolieguma operatori. Tie darbojas kā divi atsevišķi noliegumi. Pirmajā gadījumā vērtība mainās no `False` uz `True`. Tad tā uzreiz mainās atpakaļ no `True` uz `False`. Otrais gadījums darbojas tāpat. Pēc diviem noliegumiem mēs iegūstam sākotnējo Boolea vērtību.

## Izvade

Programma izdrukā šādu izvadi, kas parāda, ka mums bija taisnība:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
