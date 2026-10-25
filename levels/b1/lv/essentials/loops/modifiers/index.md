---
title: '`while` un `until` kā izteiksmes modifikatori'
---

{% include menu.html %}

Jūs varat izmantot `while` un `until` arī kā teikuma modifikatorus, tas ir, aiz teikuma. Tas darbojas [tāpat](/lv/essentials/conditional-checks/modifiers) kā ar `if` un `unless`.

Šeit ir piemērs, kas darbojas kā dalīšana pēc moduļa, tas ir, tas atrod atlikumu:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Šeit `-=` ir operators, kas atņem un piešķir vienā solī. Tātad `$x -= 3` nozīmē to pašu, ko `$x = $x - 3`.

`while` modifikators atkārto `$x -= 3`, kamēr nosacījums `$x > 2` ir `True`. Kad tas kļūst `False`, cilpa apstājas.

Ievērojiet: ja nosacījums jau no sākuma ir `False`, teikums nekad neizpildās.

Tā pati programma var izmantot `until`, bet tad nosacījums ir jāapgriež:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
