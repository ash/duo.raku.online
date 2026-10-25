---
title: 'Solutio: Triplex negatio'
---

{% include menu.html %}

Programma ex munere non compilatur, itaque parvam correctionem requirit. Hic est versio recta quae operatur (cum spatio addito inter `!` et `!!`):

## Codex

```raku
my $value = False;
say ! !!$value;
```

🦋 Totum codicem invenire potes in archivo [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Exitus

Ut fortasse exspectabas, programma valorem Booleanum contrarium imprimit:

```console
$ raku triple-negation.raku
True
```

## Commentarii

Mirum est quod programma cum tribus signis exclamationis non compilabatur:

```console
$ raku triple-negation.raku
===SORRY!=== Error while compiling /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Two terms in a row
at /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    expecting any of:
        infix
        infix stopper
        postfix
        statement end
        statement modifier
        statement modifier loop
```

Unum spatium additum hanc quaestionem solvit. Sed noli in alias insidias incidere. Specta sequens programma:

```raku
my $value = False;
say !!! $value;
```

Hoc programma compilatur, sed cum sequenti nuntio desinit:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Hoc fit quia `!!!` est operator specialis. Partem codicis ut codicem stub notat, id est codicem nondum perfectum. Si programma ad hunc locum pervenit, desinit et nuntium imprimit. In nostro casu nuntius erat valor praesens variabilis `$value`. Vide 📖 [documenta](https://docs.raku.org/routine/!!!), ut plura cognoscas.

{% include nav.html %}
