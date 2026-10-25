---
title: '`while` kaj `until` kiel modifiloj de deklaroj'
---

{% include menu.html %}

Kaj `while` kaj `until` povas esti uzataj kiel deklaraj modifiloj, [en la sama maniero](/eo/essentials/conditional-checks/modifiers) kiel `if` kaj `unless`.

Rigardu ekzemplon, kiu imitas modulan dividon, tio estas, trovi la reston:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Ĉi tie, `-=` estas operatoro, kiu faras subtrahon kaj asignon kune. En ĉi tiu kazo, `$x -= 3` estas la sama kiel `$x = $x - 3`.

La `while` modifilo ripetas la deklaron `$x -= 3`, dum la kondiĉo `$x > 2` restas `True`. Tuj kiam la kondiĉo fariĝas `False`, la buklo haltas.

Notu, ke se la kondiĉo estas `False` de la komenco, la deklaro tute ne ruliĝas.

La sama programo povas esti skribita per `until`. Por fari tion, vi devas inversigi la kondiĉon:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
