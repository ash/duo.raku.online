---
title: Binding met `:=`
translations_gpt:
---

{% include menu.html %}

Tot nu toe maakte elke nieuwe variabele een nieuwe container. Toekenning met `=` zette een waarde _in_ die container. Binding is anders. Je schrijft het met `:=`. Binding maakt geen nieuwe container. Het geeft een naam aan een _bestaande_ container.

Na binding delen de twee namen één container. Verander de waarde via de ene naam. De andere naam ziet de verandering ook:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Hier kopieert `$y := $x` de waarde `10` niet. Het maakt `$y` een tweede naam voor de container van `$x`. Het is dezelfde container. Later krijgt `$x` de waarde `20`. Dan is `$y` ook `20`.

Vergelijk dit met gewone toekenning. Die kopieert de waarde naar een andere container:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Binding werkt ook met arrays. Hier wordt `@alias` een tweede naam voor `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Nog een detail. Je kunt een naam direct aan een letterlijke waarde binden. Dat is een waarde die je in de code schrijft. Dan zit er geen container achter de naam. Daarom is de naam alleen-lezen. Je kunt er niets aan toekennen:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
