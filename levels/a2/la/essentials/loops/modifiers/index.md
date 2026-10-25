---
title: '`while` et `until` ut statement modificatores'
---

{% include menu.html %}

Potes etiam `while` vel `until` post sententiam ponere. Hoc modificatorem sententiae vocamus. Iam id [ex `if` et `unless`](/la/essentials/conditional-checks/modifiers) cognoscis.

Hic est exemplum. Residuum invenit, id est, quod post divisionem restat:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hic, `-=` est operator. Duas res facit. Numerum aufert. Etiam resultatum in variabili servat. Itaque `$x -= 3` idem est ac `$x = $x - 3`.

Modificator `while` sententiam `$x -= 3` repetit. Eam repetit dum `$x > 2` est `True`. Cum `$x > 2` est `False`, ansa desinit.

Si condicio initio `False` est, sententia numquam currit.

Idem programma cum `until` scribere potes. Tum condicionem contrariam habere debes:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
