---
title: 'Solvo: Triobla neado'
---

{% include menu.html %}

La programo en la tasko ne kompilas. Ĝi bezonas malgrandan riparon. Jen ĝusta versio, kiu funkcias. Ĝi havas spacon inter `!` kaj `!!`:

## Kodo

```raku
my $value = False;
say ! !!$value;
```

🦋 Vi povas trovi la plenan kodon en la dosiero [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Eligo

La programo presas la kontraŭan Boolean valoron. Vi verŝajne atendis tion:

```console
$ raku triple-negation.raku
True
```

## Komentoj

La programo kun tri krisignoj ne kompilas. Ni ne atendis tion:

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

Unu plia spaco solvas ĉi tiun problemon. Sed estu atenta. Ne faru alian eraron. Rigardu ĉi tiun programon:

```raku
my $value = False;
say !!! $value;
```

Ĉi tiu programo kompilas. Sed poste ĝi haltas kun ĉi tiu mesaĝo:

```console
$ raku triple-negation.raku
False
    en bloko <unuo> ĉe exercises/booleans/triple-negation.raku linio 2
```

Kial tio okazas? `!!!` estas speciala operatoro. Ĝi markas parton de la kodo kiel ŝablonan kodon. Ŝablona kodo estas kodo, kiu ankoraŭ ne estas preta. Se la programo venas al ĉi tiu loko, ĝi haltas. Ĝi ankaŭ presas mesaĝon. Ĉi tie, la mesaĝo estas la nuna valoro de la variablo `$value`. Vi povas legi pli en 📖 [la dokumentaro](https://docs.raku.org/routine/!!!).

{% include nav.html %}
