---
title: 'Ligatio cum `:=`'
translations_gpt:
---

{% include menu.html %}

Hucusque quaeque variabilis quam creavisti novum continentem accepit. Assignatio cum `=` valorem _in_ illum continentem posuit. Vinculum, quod ut `:=` scribitur, diversum est. Facit ut nomen ad continentem _iam existentem_ referat, nec novum creat.

Post vinculum duo nomina eundem continentem communicant. Itaque mutatio per unum nomen per alterum visibilis est:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Hic `$y := $x` valorem `10` non copiat. Potius `$y` fit aliud nomen pro eodem ipso continenti ac `$x`. Postea, cum `$x` ad `20` ponitur, `$y` quoque `20` dat.

Nunc id cum assignatione normali compara. Ea valorem in continentem separatum copiat:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Vinculum etiam cum ordinibus operatur. Hic codex `@alias` aliud nomen pro `@data` facit:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Adhuc una res. Si nomen directe ad valorem litteralem vincis, nullus continens post eum est. Itaque nomen solum ad legendum fit:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
