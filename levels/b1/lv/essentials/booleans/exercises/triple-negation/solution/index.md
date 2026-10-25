---
title: 'Risinājums: Trīskārša noliegšana'
---

{% include menu.html %}

Uzdevuma programma nekompilējas, tāpēc tai vajag nelielu labojumu. Šeit ir pareiza versija, kas strādā (ar pievienotu atstarpi starp `!` un `!!`):

## Kods

```raku
my $value = False;
say ! !!$value;
```

🦋 Pilnu kodu var atrast failā [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Izvade

Kā jūs droši vien gaidījāt, programma izdrukā pretējo Boolea vērtību:

```console
$ raku triple-negation.raku
True
```

## Komentāri

Negaidīti programma ar trim izsaukuma zīmēm nesakompilējās:

```console
$ raku triple-negation.raku
===SORRY!=== Error while compiling /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Two terms in a row
at /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    expecting any of:
        infix
        infix stopper
        postfix
        statement end
        statement modifier
        statement modifier loop
```

Viena papildu atstarpe atrisina šo problēmu. Bet neiekļūstiet citā slazdā. Apskatiet šādu programmu:

```raku
my $value = False;
say !!! $value;
```

Šī programma kompilējas, bet tā apstājas ar šādu ziņojumu:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Tas notiek tāpēc, ka `!!!` ir īpašs operators. Tas atzīmē koda daļu kā pagaidu kodu, tas ir, nepabeigtu kodu. Ja programma sasniedz šo vietu, tā apstājas un izdrukā ziņojumu. Mūsu gadījumā ziņojums bija mainīgā `$value` pašreizējā vērtība. Sīkāku informāciju skatiet 📖 [dokumentācijā](https://docs.raku.org/routine/!!!).

{% include nav.html %}
