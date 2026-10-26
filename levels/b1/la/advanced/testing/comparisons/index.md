---
title: Comparationes et consilia
translations_gpt:
---

{% include menu.html %}

Praeter `ok` et `is`, modulus `Test` comparationes pro diversis generibus valorum habet. Ecce utilissimae:

* `is` — verificat num duo valores aequales sint (ut chordae vel numeri)
* `is-deeply` — verificat duas structuras datorum exacte aequales esse, generibus inclusis
* `like` — verificat chordam expressioni regulari respondere
* `isnt` — transit cum duo valores **non** aequales sunt

`is-deeply` est electio recta pro ordinibus, mappis et datis nidificatis. Et structuram et genus exacte comparat:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Hoc imprimit:

```
ok 1 - reversed
1..1
```

`is` valores in chordas verteret et laxe compararet. Sed `is-deeply` postulat ut structurae vere conveniant. Nota `done-testing` consilium `1..1` in fine ponere, post probationem.

Non necesse est sinere ut `done-testing` probationes pro te numeret. Potius numerum in initio per `plan` dare potes. Hoc te custodit contra archivum probationum quod mature desinit et quasdam probationes tacite praeterit:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Hac vice consilium **primum** venit, ante effectus:

```
1..2
ok 1 - first
ok 2 - second
```

Haec est differentia a `done-testing` quam videre potes. `plan` numerum `1..2` in summo imprimit, antequam ullae probationes currunt. `done-testing` autem eum in ipso fine imprimit. Utroque modo cum `plan 2` cursus exacte duas probationes exspectat. Si pauciores vel plures probationes currunt, series probationum ut deficiens nuntiatur. Adhibe `plan` cum numerus probationum fixus et notus est. Adhibe `done-testing` cum facilius est sinere ut compages probationum numeret.

{% include nav.html %}
