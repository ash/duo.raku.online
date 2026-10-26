---
title: Quiz — gist und Str
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

`.Str` gibt die einfache Stringform zurück. Zwischen den Elementen stehen nur Leerzeichen. Es gibt keine Klammern: `1 2 3`. Die Form mit Klammern, `[1 2 3]`, kommt von `.gist`. Deshalb gibt auch `say @a` sie aus.

</div>

{% include nav.html %}
