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

Programma curre. Id cum paucis casibus diversis proba:

* Numerus rotundus cum tribus digitis, exempli gratia, 120;
* Numerus qui per 100 sine residuo dividitur, exempli gratia, 400;
* Numerus maior quam 10 sed minor quam 100;
* Numerus minor quam 10.

Pro numero 234, programma hoc imprimit:

```console
$ raku exercises/numbers/tens.raku
Intra numerum integrum positivum: 234
3
```

## Commentarii

Iterum haec solutio duos operatores simul adhibet: modulum `%` et divisionem integram `div`.

Specta spatium ante parenthesin apertam. Ibi esse debet. Sine eo errorem syntacticum accipis. De [hac proprietate](/la/essentials/more-on-functions/mind-the-space) Raku postea in sectione de functionibus loquimur. Nunc codicem scribe sicut supra vides. Vel aliud par parenthesium adde. Eas circa argumentum functionis pone. Tum spatio non opus est:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
