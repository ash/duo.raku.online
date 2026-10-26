---
title: Binding met `:=`
translations_gpt:
---

{% include menu.html %}

Tot nu toe kreeg elke variabele die je maakte een nieuwe container. Toekenning met `=` zette een waarde _in_ die container. Binding, geschreven als `:=`, is anders. Het laat een naam verwijzen naar een _bestaande_ container, in plaats van een nieuwe te maken.

Na binding delen de twee namen dezelfde container. Een wijziging via de ene naam is dus zichtbaar via de andere:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Hier kopieert `$y := $x` de waarde `10` niet. In plaats daarvan wordt `$y` een andere naam voor precies dezelfde container als `$x`. Als `$x` later `20` wordt, geeft `$y` ook `20`.

Vergelijk het nu met gewone toekenning. Die kopieert de waarde naar een aparte container:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Binding werkt ook met arrays. Deze code maakt `@alias` een andere naam voor `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Nog een detail. Als je een naam direct aan een letterlijke waarde bindt, zit er geen container achter. Daardoor wordt de naam alleen-lezen:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
