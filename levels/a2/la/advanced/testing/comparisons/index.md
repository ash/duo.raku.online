---
title: Comparationes et consilia
translations_gpt:
---

{% include menu.html %}

Modulus `Test` plus quam `ok` et `is` habet. Comparationes pro diversis generibus valorum habet. Hae sunt utilissimae:

* `is` — verificat duos valores aequales esse (ut chordas vel numeros)
* `is-deeply` — verificat duas structuras datorum exacte aequales esse, et genera quoque earum
* `like` — verificat chordam expressioni regulari respondere
* `isnt` — transit cum duo valores **non** aequales sunt

Adhibe `is-deeply` pro ordinibus, mappis et datis intra alia data. Structuram et genus exacte comparat:

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

`is` valores in chordas vertit. Tum eos comparat, sed non valde severe. `is-deeply` aliter agit. Cum eo structurae vere convenire debent. Nota: `done-testing` consilium `1..1` in fine ponit, post probationem.

`done-testing` probationes pro te numerare potest. Sed numerum etiam in initio dare potes, per `plan`. Hoc in uno problemate adiuvat. Interdum archivum probationum nimis mature desinit. Tum quasdam probationes sine ullo nuntio praeterit:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Nunc consilium **primum** est. Ante effectus venit:

```
1..2
ok 1 - first
ok 2 - second
```

Hic vides quomodo `plan` a `done-testing` differat. `plan` numerum `1..2` in summo imprimit, antequam ullae probationes currunt. `done-testing` eum in ipso fine imprimit. Utroque modo, cum `plan 2`, cursus exacte duas probationes exspectat. Si pauciores vel plures probationes currunt, tota series probationum deficit. Adhibe `plan` si numerus probationum fixus est et eum scis. Adhibe `done-testing` si facilius est modulum probationum numerare sinere.

{% include nav.html %}
