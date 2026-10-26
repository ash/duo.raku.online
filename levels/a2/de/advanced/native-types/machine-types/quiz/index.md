---
title: Quiz — Native Typen
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Frag einen nativen Wert nach sich selbst, und Raku *boxt* ihn automatisch. Raku steckt den Wert in den passenden vollwertigen Typ. `$n` ist als nativer `int` deklariert. Aber `.^name` fragt nach seinem Typnamen. Deshalb bekommst du den geboxten Typ, `Int`.

</div>

{% include nav.html %}
