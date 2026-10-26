---
title: 'Solution: Een getypte MAIN'
translations_gpt: true
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Het type `Int` betekent dat het woord op de commandoregel eruit moet zien als een geheel getal. Bij `5` gaat de waarde in `$n`, en de body drukt `10` af.

1. Bij `abc` kan de waarde geen `Int` worden, dus de signatuur komt niet overeen. Raku voert de body niet uit. In plaats daarvan drukt het het automatisch gemaakte gebruiksbericht af. Zo controleert Raku de argumenten voor je. Je hoeft zelf geen controles te schrijven.

{% include nav.html %}
