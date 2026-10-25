---
title: 'Risinājums: Pareizi nosaukumi'
---

{% include menu.html %}

Identifikatorus jūs varat izlabot vairāk nekā vienā veidā. Šeit ir daži veidi:

## Kods

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Otrā iela, 12';
my $from-to = 'Londona uz Parīzi';
```

Visi šie identifikatori ir pareizi. Bet nosaukumi ar apostrofiem nav laba ideja. Izvairieties no tiem, ja jums `$nav` spēcīga iemesla.

🦋 Jūs varat atrast avota kodu failā [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Izvade

Šī programma neko neizdrukā. Rakudo to kompilē un izpilda. Jums nevajadzētu redzēt kļūdas:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Komentāri

Šeit ir problēmas ar nosaukumiem uzdevumā:

1. Nosaukumā nevar būt atstarpes: `$ A G E`.
1. Mainīgajam vajag sigilu: `Name`. Raku valodā ir arī mainīgie bez sigila. Bet arī tiem nevar rakstīt `my Name`.
1. Nosaukums nevar sākties ar apostrofu: `$'Middle'Name`. Patiesībā šeit tā ir vienpēdiņa.
1. Nosaukums nevar sākties arī ar ciparu: `$2address`.
1. Nosaukumā nevar būt divas defises blakus: `$from--to`.

{% include nav.html %}
