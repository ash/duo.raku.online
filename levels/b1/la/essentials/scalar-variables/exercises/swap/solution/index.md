---
title: 'Solutio: Commutatio valorum'
---

{% include menu.html %}

In hoc programmate partibus syntaxis Raku ex sectione de [variabilibus scalaribus](/la/essentials/scalar-variables) utimur.

## Codex

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Codicem fontis invenire potes in fasciculo [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Exitus

Programma currite et confirmate id valores in alio ordine imprimere.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Commentarii

Hoc programma tres gradus habet. Variabiles creat et assignat, valores earum permutat et eas imprimit. Omnis gradus ambas variabiles in eadem enuntiatione adhibet. Pars maxime iucunda est modus quo variabiles valores suos commutant:

```raku
($a, $b) = $b, $a;
```

Parentheses in latere sinistro necessariae sunt. Sed eas etiam in latere dextro addere potes:

```raku
($a, $b) = ($b, $a);
```

Quid fit si parentheses omittis?

```raku
$a, $b = $b, $a;
```

Hoc casu Raku te monet `$a` in latere dextro non adhiberi:

```
$ raku exercises/scalar-variables/swap.raku
MONITIONES pro /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Inutilis usus $a in contextu sink (lineae 2, 2)
10, 20
```

Re vera haec linea idem facit atque inutilis assignatio `$b = $b`. Hoc facile videre potes si valores in latere dextro mutas, exempli gratia:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Hoc tempore etiam plures monitiones sunt. Sed etiam videre potes solum `$b` valorem suum mutavisse:

```
$ raku exercises/scalar-variables/swap.raku
MONITIONES pro /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Inutilis usus "*" in expressione "3 * $a" in contextu sink (linea 2)
Inutilis usus $a in contextu sink (linea 2)
10, 40
```

{% include nav.html %}
