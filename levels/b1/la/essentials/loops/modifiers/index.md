---
title: '`while` et `until` ut statement modificatores'
---

{% include menu.html %}

Potes etiam `while` et `until` ut modificatores sententiae adhibere, id est, post sententiam. Hoc [eodem modo](/la/essentials/conditional-checks/modifiers) operatur ac cum `if` et `unless`.

Hic est exemplum quod sicut divisio modulo operatur, id est, residuum invenit:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hic, `-=` est operator qui uno gradu subtrahit et assignat. Itaque `$x -= 3` idem significat ac `$x = $x - 3`.

Modificator `while` sententiam `$x -= 3` repetit dum condicio `$x > 2` est `True`. Cum fit `False`, ansa desinit.

Nota quod, si condicio ab initio `False` est, sententia numquam currit.

Idem programma `until` adhibere potest, sed tum condicio inverti debet:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
