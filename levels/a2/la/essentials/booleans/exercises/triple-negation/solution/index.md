---
title: 'Solutio: Triplex negatio'
---

{% include menu.html %}

Programma in munere non compilatur. Parvam correctionem requirit. Hic est versio recta quae operatur. Spatium habet inter `!` et `!!`:

## Codex

```raku
my $value = False;
say ! !!$value;
```

🦋 Totum codicem invenire potes in archivo [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Exitus

Programma valorem Booleanum contrarium imprimit. Fortasse hoc exspectabas:

```console
$ raku triple-negation.raku
True
```

## Commentarii

Programma cum tribus signis exclamationis non compilatur. Hoc non exspectabamus:

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

Unum spatium additum hanc quaestionem solvit. Sed cave. Alium errorem noli facere. Specta hoc programma:

```raku
my $value = False;
say !!! $value;
```

Hoc programma compilatur. Sed deinde cum hoc nuntio desinit:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Cur hoc fit? `!!!` est operator specialis. Partem codicis ut codicem stub notat. Codex stub est codex qui nondum paratus est. Si programma ad hunc locum venit, desinit. Etiam nuntium imprimit. Hic nuntius est valor praesens variabilis `$value`. Plura in 📖 [documentis](https://docs.raku.org/routine/!!!) legere potes.

{% include nav.html %}
