---
title: 'Solutio: Commutatio valorum'
---

{% include menu.html %}

Hoc programma syntaxi Raku ex sectione de [variabilibus scalaribus](/la/essentials/scalar-variables) utitur.

## Codex

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Codicem fontis invenire potes in fasciculo [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Exitus

Programma currite. Videte: valores ordine contrario apparent.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Commentarii

Programma tres gradus habet. Primum variabiles creat et eis valores dat. Deinde valores permutat. Denique eos imprimit. Omnis gradus ambas variabiles in una enuntiatione adhibet. Specta partem maxime iucundam. Hic variabiles valores suos permutant:

```raku
($a, $b) = $b, $a;
```

In latere sinistro parentheses necessariae sunt. Eas etiam in latere dextro addere potes:

```raku
($a, $b) = ($b, $a);
```

Quid fit sine parenthesibus?

```raku
$a, $b = $b, $a;
```

Tum monitionem accipis. Ea dicit `$a` in latere dextro non adhiberi:

```
$ raku exercises/scalar-variables/swap.raku
MONITIONES pro /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Inutilis usus $a in contextu sink (lineae 2, 2)
10, 20
```

Re vera haec linea eadem est atque `$b = $b`. Haec assignatio nihil utile facit. Hoc facile videre potes. Muta valores in latere dextro, exempli gratia, sic:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Nunc programma etiam plures monitiones imprimit. Sed aliud quoque videre potes. Solum `$b` novum valorem accipit:

```
$ raku exercises/scalar-variables/swap.raku
MONITIONES pro /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Inutilis usus "*" in expressione "3 * $a" in contextu sink (linea 2)
Inutilis usus $a in contextu sink (linea 2)
10, 40
```

{% include nav.html %}
