---
title: '`while` kaj `until` kiel modifiloj de deklaroj'
---

{% include menu.html %}

Vi ankaŭ povas meti `while` aŭ `until` post deklaro. Ni nomas tion deklara modifilo. Vi jam konas ĝin [el `if` kaj `unless`](/eo/essentials/conditional-checks/modifiers).

Jen ekzemplo. Ĝi trovas la reston, aŭ tion, kio restas post divido:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Ĉi tie, `-=` estas operatoro. Ĝi faras du aferojn. Ĝi deprenas nombron. Ĝi ankaŭ konservas la rezulton en la variablo. Do `$x -= 3` estas la sama kiel `$x = $x - 3`.

La `while` modifilo ripetas la deklaron `$x -= 3`. Ĝi ripetas ĝin, dum `$x > 2` estas `True`. Kiam `$x > 2` estas `False`, la buklo haltas.

Se la kondiĉo estas `False` komence, la deklaro neniam ruliĝas.

Vi povas skribi la saman programon per `until`. Tiam vi bezonas la malan kondiĉon:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
