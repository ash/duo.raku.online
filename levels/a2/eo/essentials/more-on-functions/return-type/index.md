---
title: Redontipo
---

{% include menu.html %}

Vi ankaŭ povas doni tipon al la rezulto de funkcio. Estas kelkaj manieroj skribi tion en kodo.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Elektu tiun, kiu plej plaĉas al vi. Rigardu la kvaran ekzemplon. Tie, la tipo de la rezulto estas ene de la krampoj. La parametroj de la funkcio ankaŭ estas tie.

{% include nav.html %}
