---
title: Quiz — Overflow
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

Een `int8` bevat waarden van `-128` tot `127`. Waarden wrappen ook aan de onderkant. Als je de kleinste waarde verlaagt, kun je geen `-129` krijgen. Daarom gaat de waarde rond naar de grootste waarde, `127`.

</div>

{% include nav.html %}
