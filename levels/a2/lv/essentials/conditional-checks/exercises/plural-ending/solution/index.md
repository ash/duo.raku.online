---
title: 'Risinājums: Daudzskaitļa beigas'
---

{% include menu.html %}

Programmai jāpārbauda lietotāja skaitlis. Ja tas ir lielāks par vienu, vārdam jābūt daudzskaitlī.

## Kods

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Atrodi programmu failā [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Izvade

Palaid programmu vismaz divas reizes. Pārbaudi to ar ievadi `1`. Tad pamēģini jebkuru citu veselu skaitli, lielāku par nulli:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Komentārs

Šeit jūs bieži varat kļūdīties. Jūs varat ierakstīt vienu `?`, nevis dubulto `??`. Vai arī jūs varat ierakstīt kolu `:`, nevis `!!`. Vai arī jūs varat izdarīt abas kļūdas.

{% include nav.html %}
