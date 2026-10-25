---
title: 'Solutio: Numerus denariorum'
---

{% include menu.html %}

Hoc modo potes hanc quaestionem solvere.

## Codex

```raku
my $n = prompt 'Intra numerum integrum positivum: ';

say ($n % 100) div 10;
```

🦋 Totum codicem invenire potes in fasciculo [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Exitus

Programma exsequi et pauca diversa casus probare:

* Numerus rotundus trium digitorum, ut 120;
* Multiplex centum, exempli gratia, 400;
* Numerus maior quam 10 sed minor quam 100;
* Numerus minor quam 10.

Pro numero 234, exitus programmatis sic videtur:

```console
$ raku exercises/numbers/tens.raku
Intra numerum integrum positivum: 234
3
```

## Commentarii

Haec solutio iterum modulum `%` et divisionem integram `div` coniungit.

Nota spatium ante parenthesin apertam. Ibi esse debet, aliter errorem syntacticum accipies. Ad [hanc proprietatem](/la/essentials/more-on-functions/mind-the-space) Raku in sectione de functionibus redibimus. Nunc codicem scribe ut supra ostenditur. Vel aliud par parenthesium circa argumentum functionis ponere potes. In hoc casu spatio non opus est:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
