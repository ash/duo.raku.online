---
title: Meer over MAIN-subroutines
translations_gpt: true
---

{% include menu.html %}

In het onderdeel Essentials heb je `MAIN` gebruikt [om commandoregelargumenten te krijgen](/nl/essentials/the-main-function/reading-command-line-arguments). Maar Raku doet meer voor je met `MAIN` dan alleen de waarden doorgeven.

## Het gebruiksbericht

Soms passen de commandoregelargumenten niet bij de signatuur van `MAIN`. In dat geval voert Raku de body niet uit. In plaats daarvan drukt het een _gebruiksbericht_ af, dat Raku automatisch maakt. Het bericht legt uit hoe je het programma aanroept.

Bekijk dit programma eens:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Als je het correct aanroept, begroet het de persoon:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Als je het zonder argument aanroept, komt de signatuur niet overeen. Dus drukt Raku het gebruiksbericht af in plaats van de begroeting:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku bouwt het bericht op uit de namen van de parameters. Geef ze dus duidelijke namen, dan krijg je gratis nuttige helptekst.

## Benoemde argumenten

De parameters van `MAIN` kunnen zowel benoemd als positioneel zijn. Een benoemde parameter wordt een commandoregeloptie zoals `--optie=waarde`. Als hij een standaardwaarde heeft, is de optie niet verplicht:

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
