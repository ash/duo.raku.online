---
title: 'Risinājums: Pareizi nosaukumi'
---

{% include menu.html %}

Ir vairāki veidi, kā izlabot identifikatorus. Šeit ir daži no tiem:

## Kods

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Otrā iela, 12';
my $from-to = 'Londona uz Parīzi';
```

Visi identifikatori ir derīgi. Bet labāk izvairīties no apostrofiem nosaukumos, ja jums `$nav` spēcīgu iemeslu.

🦋 Jūs varat atrast avota kodu failā [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Izvade

Šī programma neko neizdrukā. Bet, kad Rakudo to kompilē un izpilda, jums nevajadzētu saņemt nekādas kļūdas:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Komentāri

Apskatīsim, kas bija nepareizi sākotnējos nosaukumos:

1. Atstarpes nosaukumos nav atļautas: `$ A G E`.
1. Mainīgajam vajag sigilu: `Name`. Raku valodā var būt mainīgie bez sigila, bet arī tos nevar deklarēt kā `my Name`.
1. Nosaukums nevar sākties ar apostrofu vai, precīzāk sakot, ar vienpēdiņu: `$'Middle'Name`.
1. Nosaukums nevar sākties arī ar ciparu: `$2address`.
1. Divas defises nevar sekot viena otrai: `$from--to`.

{% include nav.html %}
