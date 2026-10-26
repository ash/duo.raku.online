---
title: Quiz — Typbeschränkungen
---

{% include menu.html %}

Ein Container wird so deklariert:

```raku
my Int $int;
```

Welche der Zuweisungen unten gibt einen Kompilierzeitfehler?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
