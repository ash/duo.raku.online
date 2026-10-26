---
title: Quiz — Dispatch mit `where`
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

`4` erfüllt die Bedingung `where $n %% 2`. Also wählt Raku den spezifischeren Kandidaten, der `even` ausgibt. Der Kandidat mit einem einfachen `Int` fängt alles ab, was die Bedingung nicht erfüllt.

</div>

{% include nav.html %}
