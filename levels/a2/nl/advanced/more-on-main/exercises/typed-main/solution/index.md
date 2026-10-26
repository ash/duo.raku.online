---
title: 'Solution: Een getypte MAIN'
translations_gpt: true
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Je kunt de broncode vinden in het bestand [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Uitvoer

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Opmerkingen

1. De parameter heeft het type `Int`. Dus moet het woord op de commandoregel op een geheel getal lijken. De waarde `5` gaat in `$n`. Dan drukt de body `10` af.

1. De waarde `abc` kan geen `Int` worden. Dus past de signatuur niet. Raku voert de body niet uit. In plaats daarvan drukt het het gebruiksbericht af. Raku maakt dit bericht zelf. Zo controleert Raku de argumenten voor je. Je schrijft zelf geen controles.

{% include nav.html %}
