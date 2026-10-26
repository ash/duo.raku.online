---
title: Vairāk par MAIN apakšprogrammām
translations_gpt:
---

{% include menu.html %}

Pamatu daļā jūs izmantojāt `MAIN`, [lai saņemtu komandrindas argumentus](/lv/essentials/the-main-function/reading-command-line-arguments). Ar `MAIN` Raku jūsu labā dara vairāk. Tas ne tikai nodod vērtības iekšā.

## Lietošanas paziņojums

Dažreiz komandrindas argumenti neatbilst `MAIN` parakstam. Paraksts ir tā parametru saraksts. Tad Raku neizpilda ķermeni. Tā vietā tas izdrukā _lietošanas paziņojumu_. Šo paziņojumu Raku izveido pats. Paziņojums parāda, kā palaist programmu.

Apskatiet šo programmu:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Palaidiet to pareizi. Tad tā sasveicinās ar cilvēku:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Tagad palaidiet to bez argumenta. Paraksts neatbilst. Tāpēc Raku izdrukā lietošanas paziņojumu. Tas nesasveicinās:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku veido paziņojumu no parametru nosaukumiem. Tāpēc dodiet parametriem labus nosaukumus. Tad palīdzības teksts ir noderīgs, un jums nav jāstrādā vairāk.

## Nosaukti argumenti

Apakšprogrammai `MAIN` var būt pozicionāli parametri. Tai var būt arī nosaukti parametri. Komandrindā nosaukts parametrs kļūst par opciju, piemēram, `--option=value`. Jūs varat tam dot noklusējuma vērtību. Tad opcija nav obligāta:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
