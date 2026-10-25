---
title: 'Solvo: Malparaj indeksoj'
---

{% include menu.html %}

Vi povas solvi ĉi tiun taskon per la konstruo `loop`. Tiam vi aldonas 2 al la bukla variablo en ĉiu iteracio. Sed vi ankaŭ povas uzi `for` buklon. Ĝi iras tra la nombroj de 1 ĝis duono de la longo de la tabelo. Poste vi multobligas ĉiun nombron per du.

## Kodo

Jen la solvo:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Trovu la programon en la dosiero [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Eligo

Unue, rulu la programon kun la originalaj datumoj.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Tiam, aldonu unu plian elementon al la datumoj:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Kontrolu, ke la nova elemento kun nepara indekso aperas en la eligo:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Komentoj

Ni revenos al ĉi tiu tasko en la sekva parto de la kurso. Tiam ni solvos ĝin en tute alia maniero.

{% include nav.html %}
