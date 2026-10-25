---
title: Return type
---

{% include menu.html %}

Je kunt het resultaat van een functie ook een expliciet type geven. Er zijn een paar manieren om dat in code te schrijven.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Kies de manier die je het meest bevalt. Let op het vierde voorbeeld. Daar staat het retourtype tussen de haakjes, samen met de parameters van de functie.

{% include nav.html %}
