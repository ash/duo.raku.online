---
title: 'Uzante `WHAT`'
translations_gpt:
---

{% include menu.html %}

`WHAT` estas pseŭdo-metodo, kiu permesas al vi ricevi la tipon de valoro. Vi povas uzi ĝin preskaŭ same kiel `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Ambaŭ presas la tipon, sed ili aspektas iomete malsame. `.^name` donas nur la nomon, kaj `WHAT` montras la tip-objekton en krampoj:

```
Int
(Int)
```

Se variablo ne havas tiplimigon, ĝia tipo komence estas `Any`. Post kiam vi atribuas valoron, `^name` kaj `WHAT` ambaŭ montras ĝian tipon:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Kun tiplimigo, la tipo estas konata tuj, eĉ antaŭ ol vi atribuas ion:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Komparado de tip-objektoj

`WHAT` redonas la tip-objekton mem, do vi povas kompari du tip-objektojn per `===`. Ĝi estas la operatoro de _valor-identeco_. Ĝi kontrolas, ĉu ambaŭ flankoj estas ĝuste la sama valoro. Ĉiu tipo havas nur unu tip-objekton. Do tio estas pura maniero kontroli, ĉu du valoroj havas la saman tipon:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` komparas nombrojn, sed `===` komparas identecon. Do ĝi funkcias rekte kun tip-objektoj, kaj ankaŭ kun aliaj valoroj.

{% include nav.html %}
