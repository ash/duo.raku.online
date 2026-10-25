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

Rulu la programon. Testu ĝin per kelkaj malsamaj kazoj:

* Ronda nombro kun tri ciferoj, ekzemple, 120;
* Nombro, kiu dividiĝas per 100 sen resto, ekzemple, 400;
* Nombro pli granda ol 10, sed pli malgranda ol 100;
* Nombro pli malgranda ol 10.

Por la nombro 234, la programo presas ĉi tion:

```console
$ raku exercises/numbers/tens.raku
Enigu pozitivan entjeran nombron: 234
3
```

## Komentoj

Denove, ĉi tiu solvo uzas du operatorojn kune: modulon `%` kaj entjeran dividon `div`.

Rigardu la spacon antaŭ la malferma krampo. Ĝi devas esti tie. Sen ĝi, vi ricevas sintaksan eraron. Ni revenos al [ĉi tiu trajto](/eo/essentials/more-on-functions/mind-the-space) de Raku en la sekcio pri funkcioj. Por nun, tajpu la kodon tiel, kiel vi vidas ĝin supre. Aŭ aldonu unu plian paron de krampoj. Metu ilin ĉirkaŭ la argumenton de la funkcio. Tiam vi ne bezonas spacon:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
