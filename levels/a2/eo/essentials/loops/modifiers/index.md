---
title: '`while` kaj `until` kiel modifiloj de deklaroj'
---

{% include menu.html %}

Vi ankaŭ povas skribi `while` kaj `until` post deklaro. Ĉi tiu formo nomiĝas modifilo de deklaro. Ĝi funkcias [kiel](/eo/essentials/conditional-checks/modifiers) `if` kaj `unless` post deklaro.

Jen ekzemplo. Ĝi trovas la reston de divido:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Ĉi tie, `-=` estas operatoro. Ĝi subtrahas kaj asignas samtempe. Do `$x -= 3` signifas la samon kiel `$x = $x - 3`.

La `while` modifilo ripetas la deklaron `$x -= 3`. Ĝi ripetas ĝin, dum la kondiĉo `$x > 2` estas `True`. Kiam la kondiĉo fariĝas `False`, la buklo haltas.

Se la kondiĉo estas `False` komence, la deklaro tute ne ruliĝas.

Vi povas skribi la saman programon per `until`. Por tio, vi devas uzi la malan kondiĉon:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
