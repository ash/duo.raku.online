---
title: Vairāk par MAIN apakšprogrammām
translations_gpt:
---

{% include menu.html %}

Pamatu daļā jūs izmantojāt `MAIN`, [lai saņemtu komandrindas argumentus](/lv/essentials/the-main-function/reading-command-line-arguments). Bet ar `MAIN` Raku jūsu labā dara vairāk nekā tikai nodod vērtības iekšā.

## Lietošanas paziņojums

Dažreiz komandrindas argumenti neatbilst `MAIN` parakstam. Tādā gadījumā Raku neizpilda ķermeni. Tā vietā tas izdrukā _lietošanas paziņojumu_, ko Raku izveido automātiski. Paziņojums paskaidro, kā programma jāizsauc.

Paskatieties uz šo programmu:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Ja programmu izsauc pareizi, tā sasveicinās ar cilvēku:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Ja programmu izsauc bez argumenta, paraksts neatbilst. Tāpēc Raku sveiciena vietā izdrukā lietošanas paziņojumu:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku uzbūvē paziņojumu no parametru nosaukumiem. Tāpēc dodiet tiem skaidrus nosaukumus, un noderīgu palīdzības tekstu jūs iegūsiet par velti.

## Nosaukti argumenti

`MAIN` parametri var būt gan nosaukti, gan pozicionāli. Nosaukts parametrs kļūst par komandrindas opciju, piemēram, `--option=value`. Ja tam ir noklusējuma vērtība, opcija nav obligāta:

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
