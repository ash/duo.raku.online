---
title: '`while` un `until` kā izteiksmes modifikatori'
---

{% include menu.html %}

Jūs varat rakstīt `while` un `until` arī aiz teikuma. Šo formu sauc par teikuma modifikatoru. Tā darbojas [tāpat kā](/lv/essentials/conditional-checks/modifiers) `if` un `unless` aiz teikuma.

Šeit ir piemērs. Tas atrod dalīšanas atlikumu:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Šeit `-=` ir operators. Tas vienlaikus atņem un piešķir. Tātad `$x -= 3` nozīmē to pašu, ko `$x = $x - 3`.

`while` modifikators atkārto teikumu `$x -= 3`. Tas to atkārto, kamēr nosacījums `$x > 2` ir `True`. Kad nosacījums kļūst `False`, cilpa apstājas.

Ja nosacījums sākumā ir `False`, teikums neizpildās nemaz.

To pašu programmu jūs varat uzrakstīt ar `until`. Tad jums jāizmanto pretējs nosacījums:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
