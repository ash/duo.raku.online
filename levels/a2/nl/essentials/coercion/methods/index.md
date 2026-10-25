---
title: Typen converteren met type coercie methoden
---

{% include menu.html %}

Je kunt een waarde omzetten naar een ander type. Een ander woord hiervoor is _forceren_. Roep daarvoor een methode aan. Die methode heeft dezelfde naam als het datatype. Zet bijvoorbeeld een string om naar een integer:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Vaak hoef je waarden niet zelf om te zetten. Raku doet het voor je. Deze code werkt goed en zoals je verwacht:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

De twee variabelen, `$a` en `$b`, bevatten strings. Maar de expressie telt ze op met `+`. Daarom zet Raku hier beide strings om naar integers. Dan krijgt `$c` ook een integer. In de laatste regel interpoleert Raku deze variabele in een string. Daarvoor maakt Raku van het getal cijfertekens.

{% include nav.html %}
