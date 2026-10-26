---
title: Quiz — Native typen
---

{% include menu.html %}

Wat drukt het volgende programma af?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Als je een native waarde iets over zichzelf vraagt, *boxt* Raku die automatisch. De waarde gaat dan in het bijbehorende volwaardige type. Hier is `$n` gedeclareerd als een native `int`. Maar `.^name` geeft als type toch het geboxte `Int`.

</div>

{% include nav.html %}
