---
title: '`while` et `until` ut statement modificatores'
---

{% include menu.html %}

Et `while` et `until` ut modificatores sententiae adhiberi possunt, [eodem modo](/la/essentials/conditional-checks/modifiers) ac `if` et `unless`.

Specta exemplum quod divisionem modulo imitatur, id est, residuum divisionis invenit:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hic, `-=` est operator qui subtractionem et assignationem simul facit. In hoc casu, `$x -= 3` idem est ac `$x = $x - 3`.

Modificator `while` sententiam `$x -= 3` repetit dum condicio `$x > 2` manet `True`. Simul ac condicio fit `False`, ansa desinit.

Nota quod, si condicio ab initio `False` est, sententia omnino non currit.

Idem programma cum `until` scribi potest. Ad hoc faciendum, condicionem invertere debes:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
