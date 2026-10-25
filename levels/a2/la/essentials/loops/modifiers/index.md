---
title: '`while` et `until` ut statement modificatores'
---

{% include menu.html %}

Potes etiam `while` et `until` post sententiam scribere. Haec forma modificator sententiae vocatur. Operatur [sicut](/la/essentials/conditional-checks/modifiers) `if` et `unless` post sententiam.

Hic est exemplum. Residuum divisionis invenit:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hic, `-=` est operator. Simul subtrahit et assignat. Itaque `$x -= 3` idem significat ac `$x = $x - 3`.

Modificator `while` sententiam `$x -= 3` repetit. Eam repetit dum condicio `$x > 2` est `True`. Cum condicio fit `False`, ansa desinit.

Si condicio initio `False` est, sententia omnino non currit.

Idem programma cum `until` scribere potes. Ad hoc, condicionem contrariam adhibere debes:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
