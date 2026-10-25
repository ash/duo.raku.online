---
title: Benoemde parameters
---

{% include menu.html %}

Anders dan [positionele parameters](../positional-parameters) worden _benoemde_ parameters herkend aan hun namen.

Deze functie heeft twee parameters met de namen `$from` en `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Om deze functie aan te roepen, moet je de namen van de argumenten schrijven:

```raku
say distance(from => 30, to => 10); # 20
```

Als je de argumenten doorgeeft alsof ze positioneel zijn, krijg je een fout. De aanroep `distance(30, 10)` veroorzaakt bijvoorbeeld een fout:

    Too many positionals passed; expected 0 arguments but got 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

Het goede is dat je benoemde argumenten in elke volgorde kunt zetten. De volgende twee aanroepen zijn precies hetzelfde:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Variabelen doorgeven

Soms staat de waarde die je wilt doorgeven in een variabele. Die variabele kan ook dezelfde naam hebben als de parameter. Dan kun je genieten van een speciale syntaxis die typwerk bespaart:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Dit is vergelijkbaar met een langere aanroep:

```raku
say distance(from => $from, to => $to); # 20
```

Ook hier maakt de volgorde niet uit:

```raku
say distance(:$to, :$from); # 20
```

Als de namen van de variabele en de parameter verschillen, geef dan een paar door. Gebruik een van deze manieren:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# of:

say distance(:from($a), :to($b));
```

{% include nav.html %}
