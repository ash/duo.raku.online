---
title: 'Risinājums: Dubultā noliegšana'
---

{% include menu.html %}

Pievienosim kodu uzdevuma otrajai daļai. Mēs atkal izmantojam to pašu mainīgo:

## Kods

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Pilnu kodu var atrast failā [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Komentāri

Vēl nepalaidiet programmu. Vispirms padomāsim: ko tā izdrukā? Pirms mainīgā ir divi nolieguma operatori. Noliegums maina `False` uz `True` un `True` uz `False`. Šeit abi `!` darbojas kā divi atsevišķi nolieguma operatori. Pirmajā gadījumā pirmais noliegums maina `False` uz `True`. Tad otrais noliegums uzreiz maina to atpakaļ uz `False`. Otrais gadījums darbojas tāpat. Pēc diviem noliegumiem mēs atkal iegūstam sākuma Boolea vērtību.

## Izvade

Šeit ir programmas izvade. Tā parāda, ka mums bija taisnība:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
