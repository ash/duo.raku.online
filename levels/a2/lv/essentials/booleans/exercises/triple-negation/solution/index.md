---
title: 'Risinājums: Trīskārša noliegšana'
---

{% include menu.html %}

Uzdevuma programma nekompilējas. Tai vajag nelielu labojumu. Šeit ir pareiza versija, kas strādā. Tajā ir atstarpe starp `!` un `!!`:

## Kods

```raku
my $value = False;
say ! !!$value;
```

🦋 Pilnu kodu var atrast failā [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Izvade

Programma izdrukā pretējo Boolea vērtību. Jūs droši vien to gaidījāt:

```console
$ raku triple-negation.raku
True
```

## Komentāri

Programma ar trim izsaukuma zīmēm nekompilējas. To mēs negaidījām:

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

Vēl viena atstarpe atrisina šo problēmu. Bet esiet uzmanīgi. Nepieļaujiet citu kļūdu. Apskatiet šo programmu:

```raku
my $value = False;
say !!! $value;
```

Šī programma kompilējas. Bet tad tā apstājas ar šo ziņojumu:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Kāpēc tā notiek? `!!!` ir īpašs operators. Tas atzīmē koda daļu kā pagaidu kodu. Pagaidu kods ir kods, kas vēl nav gatavs. Ja programma nonāk līdz šai vietai, tā apstājas. Tā arī izdrukā ziņojumu. Šeit ziņojums ir mainīgā `$value` pašreizējā vērtība. Vairāk varat lasīt 📖 [dokumentācijā](https://docs.raku.org/routine/!!!).

{% include nav.html %}
