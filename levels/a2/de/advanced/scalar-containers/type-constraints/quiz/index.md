---
title: Quiz — Typbeschränkungen
---

{% include menu.html %}

Hier ist die Deklaration eines Containers:

```raku
my Int $int;
```

Welche Zuweisung unten gibt einen Fehler zur Kompilierzeit?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
