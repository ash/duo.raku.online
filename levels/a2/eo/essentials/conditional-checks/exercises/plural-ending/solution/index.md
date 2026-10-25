---
title: 'Solvo: Pluralfinaĵo'
---

{% include menu.html %}

La programo devas kontroli la nombron de la uzanto. Se ĝi estas pli granda ol unu, la vorto devas esti plurala.

## Kodo

```raku
my $n = prompt 'Kiom da dosieroj kopii? ';
my $ending = $n == 1 ?? '' !! 'j';
say "$n dosiero{$ending} kopiita.";
```

🦋 Trovu la programon en la dosiero [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Eligo

Rulu la programon almenaŭ du fojojn. Testu ĝin kun la enigo `1`. Poste provu iun ajn alian tutan nombron pli grandan ol nulo:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Kiom da dosieroj kopii? 10
10 dosieroj kopiitaj.

$ raku exercises/conditional-checks/plural-ending.raku
Kiom da dosieroj kopii? 1
1 dosiero kopiita.
```

## Komento

Vi eble ofte faras eraron ĉi tie. Vi eble tajpas unu `?` anstataŭ la duoblan `??`. Aŭ vi eble tajpas dupunkton `:` anstataŭ `!!`. Aŭ vi eble faras ambaŭ.

{% include nav.html %}
