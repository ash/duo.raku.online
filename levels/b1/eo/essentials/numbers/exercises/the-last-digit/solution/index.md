---
title: 'Solvo: La lasta cifero'
---

{% include menu.html %}

La ideo estas uzi modulan dividon per 10. Tio donas al vi la lastan ciferon de la nombro.

## Kodo

Jen la solvo:

```raku
my $n = prompt 'Enigu nombron: ';
my $d = $n % 10;
say "La lasta cifero de $n estas $d.";
```

🦋 Trovu la programon en la dosiero [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Eligo

Rulu la programon kaj enigu pozitivan entjeron:

```console
$ raku exercises/numbers/the-last-digit.raku
Enigu nombron: 1234
La lasta cifero de 1234 estas 4.
```

## Komento

Notu, ke kun negativaj nombroj tio ne funkcias tiel, kiel vi eble atendus. Ekzemple, `-11 % 10` estas `9`, ne `1`.

{% include nav.html %}
