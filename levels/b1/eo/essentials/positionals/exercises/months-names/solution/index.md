---
title: 'Solvo: Monataj nomoj'
---

{% include menu.html %}

La nomoj de la monatoj venas el la tabelo `@months`, kiu havas dek du ŝnurojn. Tabelaj indeksoj komenciĝas per 0. Do antaŭ ol indeksi la tabelon, ni subtrahas 1 de la eniga nombro.

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

Rulu la programon kelkajn fojojn por vidi malsamajn nomojn de monatoj.

```console
$ raku exercises/positionals/months-names.raku 5
Majo

$ raku exercises/positionals/months-names.raku 1
Januaro

$ raku exercises/positionals/months-names.raku 12
Decembro
```

## Stilo

Vi povas elekti, kiel formati listojn kiel tiu en ĉi tiu programo. Jen kelkaj ebloj por kompari:

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

Vi ankaŭ povas listigi ĉiujn monatojn en unu linio.

```raku
my @months = < Januaro Februaro Marto Aprilo Majo Junio Julio Aŭgusto Septembro Oktobro Novembro Decembro >;
```

{% include nav.html %}
