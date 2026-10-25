---
title: Redonare typus
---

{% include menu.html %}

Etiam eventui functionis typum explicitum dare potes. Sunt pauci modi ad hoc in codice scribendum.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Elige modum qui tibi optime placet. Nota quartum exemplum. Ibi typus reditus intra parentheses est, una cum parametris functionis.

{% include nav.html %}
