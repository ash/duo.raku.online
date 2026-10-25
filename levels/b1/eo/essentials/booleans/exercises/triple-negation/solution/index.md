---
title: 'Solvo: Triobla neado'
---

{% include menu.html %}

La programo el la tasko ne kompilas, do ĝi bezonas malgrandan riparon. Jen ĝusta versio, kiu funkcias (kun aldonita spaco inter `!` kaj `!!`):

## Kodo

```raku
my $value = False;
say ! !!$value;
```

🦋 Vi povas trovi la plenan kodon en la dosiero [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Eligo

Kiel vi verŝajne atendis, la programo presas la kontraŭan Boolean valoron:

```console
$ raku triple-negation.raku
True
```

## Komentoj

Surprize, la programo kun tri krisignoj ne kompilis:

```console
$ raku triple-negation.raku
===SORRY!=== Eraro dum kompilado de /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Du terminoj sinsekve
ĉe /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    atendante iun el:
        infikso
        infikso haltigilo
        postfikso
        deklaro fino
        deklaro modifilo
        deklaro modifilo buklo
```

Unu kroma spaco solvas ĉi tiun problemon. Sed ne falu en alian kaptilon. Rigardu la sekvan programon:

```raku
my $value = False;
say !!! $value;
```

Ĉi tiu programo kompilas, sed ĝi haltas kun la sekva mesaĝo:

```console
$ raku triple-negation.raku
False
    en bloko <unuo> ĉe exercises/booleans/triple-negation.raku linio 2
```

Tio okazas, ĉar `!!!` estas speciala operatoro. Ĝi markas parton de la kodo kiel ŝablonan kodon, tio estas, nefinitan kodon. Se la programo atingas ĉi tiun punkton, ĝi haltas kaj presas la mesaĝon. En nia kazo, la mesaĝo estis la nuna valoro de la variablo `$value`. Vidu 📖 [la dokumentaron](https://docs.raku.org/routine/!!!) por pliaj detaloj.

{% include nav.html %}
