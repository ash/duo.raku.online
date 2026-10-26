---
title: Stella Whatever
translations_gpt:
---

{% include menu.html %}

Fortasse `*` vidisti in expressionibus ut `* * 2` vel `* %% 2`. In vocationibus `map` et `grep` apparent. Illud `*` est _stella Whatever_. Expressio circa eam parvam functionem unius argumenti ibi statim creat. Haec sectio explicat quid stella vere sit et quomodo ad clausulam se habeat. Etiam ostendit ubi stella sola simpliciter «quidquid vis» significet.

## Stella functionem facit

Cum expressio `*` continet, Raku totam expressionem in functionem vertit, in `WhateverCode`. In hac functione stella argumentum repraesentat:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` est functio quae unicum argumentum suum per duo multiplicat. Hac de causa `(1..5).map(* * 2)` operatur. `map` prorsus talem functionem unius argumenti accipit.

## Whatever cum clausula comparatum

Expressio Whatever est modus brevior functionem scribendi. Hanc functionem etiam ut clausulam scribere posses. Haec tria eadem sunt:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

Forma Whatever nullum parametrum nominat. Forma clausulae variabilem thematis `$_` adhibet, et forma cuspidata `$x` nominat. Ultima, `-> $x { ... }`, per se parva functio est. Eam proprie in [Subprogrammatis anonymis](/la/advanced/anonymous-subroutines) disces. Hic eam tantum lege ut tertium modum quo eadem functio unius argumenti scribitur. Pro expressione simplici stella brevissima est. Ideo tam frequens est cum `map`, `grep` et `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

**Clausulam** elige cum codex plus quam unam expressionem requirit. Clausula etiam bona est cum clarum nomen parametri adiuvat. **Stellam** elige cum brevis expressio satis est.

## Plures stellae

Quaeque `*` in expressione suum argumentum est, ordine. Itaque duae stellae functionem cum **duobus** argumentis faciunt:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Hic `* + *` est functio cum duobus argumentis, et ea addit. Exempli gratia, summam adhuc collectam et elementum sequens addere potest.

## Whatever per se

Per se `*` «quidquid» significat: quantum est, vel nullum limitem. Ecce duo usus communes:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * est longitudo ordinis, ergo *-1 est index ultimus

say (1..*).head(3); # (1 2 3)  — 1..* est intervallum sine fine
```

In `@a[*-1]` stella numerum elementorum repraesentat. In `1..*` «nullum terminum superiorem» significat. Stella functionem aedificare potest vel «quidquid vis» significare. Utroque modo, una ex formis brevibus utilissimis in Raku est.

{% include nav.html %}
