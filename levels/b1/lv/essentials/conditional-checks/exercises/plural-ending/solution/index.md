---
title: 'Risinājums: Daudzskaitļa beigas'
---

{% include menu.html %}

Programmai jāpārbauda, vai skaitlis ir lielāks par vienu. Ja tā ir, vārdam jābūt daudzskaitļa formā.

## Kods

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Atrodi programmu failā [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Izvade

Palaid programmu divas vai vairāk reizes. Pamēģini ievadi `1` un arī kādu citu pozitīvu veselu skaitli:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Komentārs

Jūs bieži varat kļūdas pēc ierakstīt vienu `?`, nevis dubulto `??`. Jūs varat arī ierakstīt kolu `:`, nevis `!!`, vai pieļaut abas kļūdas.

{% include nav.html %}
