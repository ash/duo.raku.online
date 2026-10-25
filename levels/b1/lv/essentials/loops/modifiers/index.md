---
title: '`while` un `until` kā izteiksmes modifikatori'
---

{% include menu.html %}

Gan `while`, gan `until` var izmantot kā teikuma modifikatorus, [tāpat](/lv/essentials/conditional-checks/modifiers) kā `if` un `unless`.

Apskatiet piemēru, kas imitē dalīšanu pēc moduļa, tas ir, atlikuma atrašanu:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Šeit `-=` ir operators, kas veic atņemšanu un piešķiršanu kopā. Šajā gadījumā `$x -= 3` ir tas pats, kas `$x = $x - 3`.

`while` modifikators atkārto teikumu `$x -= 3`, kamēr nosacījums `$x > 2` paliek `True`. Tiklīdz nosacījums kļūst `False`, cilpa apstājas.

Pamaniet, ka, ja nosacījums jau no sākuma ir `False`, teikums neizpildās nemaz.

To pašu programmu var uzrakstīt ar `until`. Lai to izdarītu, jums ir jāapgriež nosacījums:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
