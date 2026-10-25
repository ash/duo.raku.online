---
title: 'Solvo: Faktorialo kun multi-funkcioj'
---

{% include menu.html %}

Ĉi tiu ekzerco denove temas pri faktorioj. Fakte, ĉi tiu tasko permesas al ni montri pli da trajtoj de Raku.

Vi povas kalkuli faktorion, komencante de la donita nombro kaj irante malsupren. En tiu kazo, vi devas halti, kiam la nombro atingas 1. Multi-funkcioj permesas al vi fari tion. Movu la kazon `$n == 1` al aparta multi-funkcio.

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

Rimarku, ke la programo konvertas la enigan argumenton al entjero: `@*ARGS[0].Int`. Tio evitas senfinan buklon, kiam la eniga nombro estas `1`. Sen la konverto, la funkcio `factorial` ricevas valoron de tipo [`IntStr`](/eo/essentials/typed-variables/allomorphs). La unua variaĵo de la multi-funkcio ne povas kapti tian vokon. Sed en la rekursia voko `factorial(2 - 1)`, la argumento estas entjero. Do Raku povas voki la unuan variaĵon.

{% include nav.html %}
