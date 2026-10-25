---
title: 'Solvo: Nombro de dekoj'
---

{% include menu.html %}

Jen kiel vi povas solvi la taskon.

## Kodo

```raku
my $n = prompt 'Enigu pozitivan entjeran nombron: ';

say ($n % 100) div 10;
```

🦋 Vi povas trovi la plenan kodon en la dosiero [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Eligo

Rulu la programon kaj testu kelkajn malsamajn kazojn:

* Ronda tricifera nombro, kiel 120;
* Multoblo de 100, ekzemple, 400;
* Nombro pli granda ol 10, sed pli malgranda ol 100;
* Nombro pli malgranda ol 10.

Por la nombro 234, la eligo de la programo aspektas tiel:

```console
$ raku exercises/numbers/tens.raku
Enigu pozitivan entjeran nombron: 234
3
```

## Komentoj

Ĉi tiu solvo denove kombinas modulon `%` kaj entjeran dividon `div`.

Notu la spacon antaŭ la malferma krampo. Ĝi devas esti tie, alie vi ricevos sintaksan eraron. Ni revenos al [ĉi tiu trajto](/eo/essentials/more-on-functions/mind-the-space) de Raku en la sekcio pri funkcioj. Por nun, tajpu la kodon kiel montrite supre. Aŭ vi povas meti alian paron de krampoj ĉirkaŭ la argumenton de la funkcio. En tiu kazo, vi ne bezonas spacon:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
