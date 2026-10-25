---
title: '`while` kaj `until` kiel modifiloj de deklaroj'
---

{% include menu.html %}

Vi ankaŭ povas uzi `while` kaj `until` kiel deklarajn modifilojn, tio estas, post deklaro. Tio funkcias [en la sama maniero](/eo/essentials/conditional-checks/modifiers) kiel ĉe `if` kaj `unless`.

Jen ekzemplo, kiu funkcias kiel modula divido, tio estas, ĝi trovas la reston:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Ĉi tie, `-=` estas operatoro, kiu subtrahas kaj asignas per unu paŝo. Do `$x -= 3` signifas la samon kiel `$x = $x - 3`.

La `while` modifilo ripetas `$x -= 3`, dum la kondiĉo `$x > 2` estas `True`. Kiam ĝi fariĝas `False`, la buklo haltas.

Notu, ke se la kondiĉo estas `False` de la komenco, la deklaro neniam ruliĝas.

La sama programo povas uzi `until`, sed tiam la kondiĉo devas esti inversigita:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
