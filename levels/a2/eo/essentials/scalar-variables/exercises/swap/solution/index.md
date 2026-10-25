---
title: 'Solvo: Interŝanĝi valorojn'
---

{% include menu.html %}

Ĉi tiu programo uzas Raku-sintakson el la sekcio pri [skalaj variabloj](/eo/essentials/scalar-variables).

## Kodo

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Vi povas trovi la fontokodon en la dosiero [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Eligo

Rulu la programon. Kontrolu, ke ĝi presas la valorojn en la alia ordo.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Komentoj

La programo havas tri paŝojn. Unue, ĝi kreas la variablojn kaj donas al ili valorojn. Poste ĝi interŝanĝas la valorojn. Fine, ĝi presas ilin. Ĉiu paŝo uzas ambaŭ variablojn en unu deklaro. Rigardu la plej interesan parton. Ĉi tie, la variabloj interŝanĝas siajn valorojn:

```raku
($a, $b) = $b, $a;
```

Vi bezonas krampojn ĉe la maldekstra flanko. Vi ankaŭ povas aldoni ilin ĉe la dekstra flanko:

```raku
($a, $b) = ($b, $a);
```

Kio okazas sen la krampoj?

```raku
$a, $b = $b, $a;
```

Tiam vi ricevas averton. Ĝi diras, ke la programo ne uzas `$a` ĉe la dekstra flanko:

```
$ raku exercises/scalar-variables/swap.raku
AVERTOJ por /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Senzaŭza uzo de $a en sink-kunteksto (linioj 2, 2)
10, 20
```

Fakte, ĉi tiu linio estas la sama kiel `$b = $b`. Tiu asigno faras nenion utilan. Vi povas facile vidi tion. Ŝanĝu la valorojn ĉe la dekstra flanko, ekzemple, jene:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Nun la programo presas eĉ pli da avertoj. Sed vi ankaŭ povas vidi ion alian. Nur `$b` ricevas novan valoron:

```
$ raku exercises/scalar-variables/swap.raku
AVERTOJ por /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Senzaŭza uzo de "*" en esprimo "3 * $a" en sink-kunteksto (linio 2)
Senzaŭza uzo de $a en sink-kunteksto (linio 2)
10, 40
```

{% include nav.html %}
