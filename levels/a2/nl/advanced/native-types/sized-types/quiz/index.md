---
title: Quiz — Overflow
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Een `int8` bevat waarden van `-128` tot `127`. Waarden wrappen ook aan de onderkant. Neem de kleinste waarde en verlaag die. Je kunt geen `-129` krijgen. Daarom wrapt de waarde naar de grootste waarde, `127`.

</div>

{% include nav.html %}
