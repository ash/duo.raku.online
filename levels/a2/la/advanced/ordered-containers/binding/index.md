---
title: 'Ligatio cum `:=`'
translations_gpt:
---

{% include menu.html %}

Hucusque quaeque nova variabilis novum continentem fecit. Assignatio cum `=` valorem _in_ hunc continentem posuit. Vinculum aliud est. Id cum `:=` scribis. Vinculum novum continentem non facit. Nomen continenti _iam existenti_ dat.

Post vinculum duo nomina unum continentem communem habent. Muta valorem per unum nomen. Alterum nomen quoque mutationem videt:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Hic `$y := $x` valorem `10` non copiat. Facit `$y` secundum nomen pro continenti `$x`. Idem continens est. Postea `$x` valorem `20` accipit. Tum `$y` quoque `20` est.

Compara hoc cum assignatione normali. Ea valorem in alium continentem copiat:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Vinculum cum ordinibus quoque operatur. Hic `@alias` secundum nomen pro `@data` fit:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Adhuc una res. Nomen vinculo directe cum valore litterali iungere potes. Hic est valor quem in codice scribis. Tum nullus continens post nomen est. Itaque nomen solum ad legendum est. Nihil ei assignare potes:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
