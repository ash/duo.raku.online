---
title: Quiz — Dispatch mit `where`
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Die Bedingung `where $n %% 2` ist für `4` wahr. Also wählt Raku den spezifischeren Kandidaten. Er gibt `even` aus. Der andere Kandidat hat nur `Int`. Er nimmt alle Werte, die die Bedingung nicht erfüllen.

</div>

{% include nav.html %}
