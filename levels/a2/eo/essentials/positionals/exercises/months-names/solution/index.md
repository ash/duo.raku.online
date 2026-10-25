---
title: 'Solvo: Monataj nomoj'
---

{% include menu.html %}

La programo prenas la nomojn de la monatoj el la tabelo `@months`. Ĉi tiu tabelo havas dek du ŝnurojn. Tabelaj indeksoj komenciĝas per 0. Do ni devas forpreni 1 de la eniga nombro. Ni faras tion antaŭ ol uzi ĝin kiel indekson.

## Kodo

Jen la solvo:

```raku
my @months = <
    Januaro Februaro Marto Aprilo
    Majo Junio Julio Aŭgusto
    Septembro Oktobro Novembro Decembro
>;

say @months[@*ARGS[0] - 1];
```

🦋 Trovu la programon en la dosiero [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Eligo

Rulu la programon kelkajn fojojn. Vi vidos malsamajn nomojn de monatoj.

```console
$ raku exercises/positionals/months-names.raku 5
Majo

$ raku exercises/positionals/months-names.raku 1
Januaro

$ raku exercises/positionals/months-names.raku 12
Decembro
```

## Stilo

Estas malsamaj manieroj formati tian liston. Vi povas elekti iun ajn el ili. Komparu kelkajn eblojn:

```raku
my @months = <
    Januaro Februaro Marto Aprilo
    Majo Junio Julio Aŭgusto
    Septembro Oktobro Novembro Decembro >;
```

Aŭ:

```raku
my @months = < Januaro   Februaro Marto    Aprilo
               Majo       Junio     Julio     Aŭgusto
               Septembro Oktobro  Novembro Decembro >;
```

Vi ankaŭ povas meti ĉiujn monatojn en unu linion.

```raku
my @months = < Januaro Februaro Marto Aprilo Majo Junio Julio Aŭgusto Septembro Oktobro Novembro Decembro >;
```

{% include nav.html %}
