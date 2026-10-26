---
title: Quiz — gist und Str
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` gibt die einfache Stringform zurück. Hier sind die Elemente einfach durch Leerzeichen verbunden, ohne Klammern: `1 2 3`. Die Form mit Klammern, `[1 2 3]`, bekommst du von `.gist` und damit auch von `say @a`.

</div>

{% include nav.html %}
