---
title: 'Solvo: Interŝanĝi valorojn'
---

{% include menu.html %}

En ĉi tiu programo, ni uzas partojn de Raku-sintakso el la sekcio pri [skalaj variabloj](/eo/essentials/scalar-variables).

## Kodo

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Vi povas trovi la fontokodon en la dosiero [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Eligo

Rulu la programon kaj kontrolu, ke ĝi presas la valorojn en malsama ordo.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Komentoj

Ĉi tiu programo havas tri paŝojn. Ĝi kreas kaj asignas la variablojn, interŝanĝas iliajn valorojn kaj presas ilin. Ĉiu paŝo uzas ambaŭ variablojn en la sama deklaro. La plej interesa parto estas, kiel la variabloj interŝanĝas siajn valorojn:

```raku
($a, $b) = $b, $a;
```

La krampoj ĉe la maldekstra flanko estas necesaj. Sed vi ankaŭ povas aldoni ilin ĉe la dekstra flanko:

```raku
($a, $b) = ($b, $a);
```

Kio okazas, se vi forlasas la krampojn?

```raku
$a, $b = $b, $a;
```

En ĉi tiu kazo, Raku avertas vin, ke `$a` ĉe la dekstra flanko ne estas uzata:

```
$ raku exercises/scalar-variables/swap.raku
AVERTOJ por /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Senzaŭza uzo de $a en sink-kunteksto (linioj 2, 2)
10, 20
```

Fakte, ĉi tiu linio faras la samon kiel la senutila asigno `$b = $b`. Vi povas facile vidi tion, se vi ŝanĝas la valorojn dekstre, ekzemple:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Ĉi-foje, estas eĉ pli da avertoj. Sed vi ankaŭ povas vidi, ke nur `$b` ŝanĝis sian valoron:

```
$ raku exercises/scalar-variables/swap.raku
AVERTOJ por /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Senzaŭza uzo de "*" en esprimo "3 * $a" en sink-kunteksto (linio 2)
Senzaŭza uzo de $a en sink-kunteksto (linio 2)
10, 40
```

{% include nav.html %}
