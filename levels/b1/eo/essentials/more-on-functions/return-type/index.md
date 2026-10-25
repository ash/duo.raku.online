---
title: Redontipo
---

{% include menu.html %}

Vi ankaŭ povas doni eksplicitan tipon al la rezulto de funkcio. Estas kelkaj manieroj skribi tion en kodo.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Elektu tiun, kiu plej plaĉas al vi. Rimarku la kvaran ekzemplon. Tie, la revena tipo estas ene de la krampoj, kune kun la parametroj de la funkcio.

{% include nav.html %}
