---
title: 'Uzante `WHAT`'
translations_gpt:
---

{% include menu.html %}

`WHAT` estas pseŭdo-metodo. Ĝi donas al vi la tipon de valoro. Vi uzas ĝin preskaŭ kiel `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Ambaŭ presas la tipon, sed ili aspektas iom malsame. `.^name` donas nur la nomon. `WHAT` donas la tipon mem, kiel tip-objekton. Ĝi montras ĝin en rondaj krampoj:

```
Int
(Int)
```

Prenu variablon sen tiplimigo. Komence ĝia tipo estas `Any`. Poste vi atribuas valoron. Nun `^name` kaj `WHAT` ambaŭ montras la tipon de ĉi tiu valoro:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Kun tiplimigo, Raku tuj konas la tipon. Tio estas vera eĉ antaŭ ol vi atribuas valoron:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Komparado de tip-objektoj

`WHAT` redonas la tip-objekton mem. Do vi povas kompari du tip-objektojn. Uzu por tio la operatoron `===`. Ĝi estas la operatoro de _valor-identeco_. Ĝi kontrolas, ĉu ambaŭ flankoj estas la sama valoro. Ĉiu tipo havas nur unu tip-objekton. Do `===` facile kontrolas, ĉu du valoroj havas la saman tipon:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` komparas nombrojn. Sed `===` komparas identecon. Do ĝi funkcias rekte kun tip-objektoj. Ĝi ankaŭ funkcias kun aliaj valoroj.

{% include nav.html %}
