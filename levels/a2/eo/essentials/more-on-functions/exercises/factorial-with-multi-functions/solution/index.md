---
title: 'Solvo: Faktorialo kun multi-funkcioj'
---

{% include menu.html %}

Ĉi tiu ekzerco denove temas pri faktorioj. Per ĉi tiu tasko, ni povas montri pli da trajtoj de Raku.

Por trovi faktorion, ni povas komenci ĉe la donita nombro. Poste ni iras malsupren. Ni devas halti, kiam la nombro estas 1. Multi-funkcioj povas fari tion. Metu la kazon `$n == 1` en apartan multi-funkcion.

## Kodo

Jen la solvo:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Trovu la programon en la dosiero [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Eligo

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Komento

Rimarku, ke la programo faras entjeron el la eniga argumento. Ĝi faras tion per `@*ARGS[0].Int`. Sen tio, la enigo `1` donas senfinan buklon. Jen kial. La funkcio `factorial` tiam ricevas valoron de tipo [`IntStr`](/eo/essentials/typed-variables/allomorphs). Do Raku ne povas uzi la unuan variaĵon de la multi-funkcio. La rekursia voko `factorial(2 - 1)` estas alia. Tie, la argumento estas entjero. Do Raku povas voki la unuan variaĵon.

{% include nav.html %}
