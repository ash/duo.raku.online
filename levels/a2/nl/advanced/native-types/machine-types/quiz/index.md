---
title: Quiz — Native typen
---

{% include menu.html %}

Wat drukt dit programma af?

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

Vraag een native waarde iets over zichzelf, en Raku *boxt* die automatisch. Raku zet de waarde in het bijbehorende volwaardige type. `$n` is gedeclareerd als een native `int`. Maar `.^name` vraagt naar de naam van het type. Je krijgt dus het geboxte type, `Int`.

</div>

{% include nav.html %}
