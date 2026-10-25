---
title: Return type
---

{% include menu.html %}

Je kunt ook een type geven aan het resultaat van een functie. Er zijn een paar manieren om dat in code te schrijven.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Kies de manier die je het leukst vindt. Kijk naar het vierde voorbeeld. Daar staat het type van het resultaat tussen de haakjes. De parameters van de functie staan daar ook.

{% include nav.html %}
