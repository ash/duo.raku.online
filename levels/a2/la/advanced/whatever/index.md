---
title: Stella Whatever
translations_gpt:
---

{% include menu.html %}

Fortasse `*` in expressionibus ut `* * 2` vel `* %% 2` vidisti. Eas cum `map` et `grep` adhibes. Hoc `*` est _stella Whatever_. Expressio circa eam parvam functionem facit. Functio unum argumentum habet. Raku eam ibi statim facit. Haec sectio explicat quid stella vere sit. Etiam stellam cum clausula comparat. Et ostendit ubi stella sola simpliciter «quidquid vis» significet.

## Stella functionem facit

Expressio `*` continere potest. Tum Raku totam expressionem in functionem vertit. Haec functio est `WhateverCode`. In ea stella argumentum significat:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` est functio. Unum argumentum accipit et id per duo multiplicat. Ideo `(1..5).map(* * 2)` operatur. `map` prorsus talem functionem cum uno argumento accipit.

## Whatever aut clausula

Expressio Whatever est modus brevis functionem scribendi. Eandem functionem etiam ut clausulam scribere potes. Hae tres lineae idem faciunt:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

Forma Whatever nomen parametri non habet. Forma clausulae variabilem thematis `$_` adhibet. Forma cuspidata nomen `$x` habet. Ultima, `-> $x { ... }`, ipsa parva functio est. De ea postea disces, in [Subprogrammatis anonymis](/la/advanced/anonymous-subroutines). Hic eam simpliciter ut tertiam formam eiusdem functionis vide. Haec functio unum argumentum habet. Pro expressione simplici stella brevissima est. Ideo homines eam saepe cum `map`, `grep` et `sort` adhibent:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

**Clausulam** adhibe si codex plus quam unam expressionem requirit. Clausula etiam melior est si clarum nomen parametri adiuvat. **Stellam** adhibe si una brevis expressio satis est.

## Plures stellae

Quaeque `*` in expressione est argumentum separatum. Ordine veniunt. Itaque duae stellae functionem cum **duobus** argumentis faciunt:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Hic `* + *` est functio cum duobus argumentis. Haec argumenta addit. Exempli gratia, summa adhuc collecta et elementum sequens esse possunt.

## Stella Whatever sola

Stella sola, `*`, «quidquid» significat. Significare potest «quantum est». Etiam «nullum limitem» significare potest. Ecce duo usus communes:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * est longitudo ordinis, ergo *-1 est index ultimus

say (1..*).head(3); # (1 2 3)  — 1..* est intervallum sine fine
```

In `@a[*-1]` stella est numerus elementorum. In `1..*` stella «nullum terminum superiorem» significat. Interdum stella functionem facit. Interdum «quidquid vis» significat. Utroque modo, est una ex utilissimis formis brevibus Raku.

{% include nav.html %}
