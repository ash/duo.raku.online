---
title: Quiz — Native Typen
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

Wenn du einen nativen Wert nach sich selbst fragst, *boxt* Raku ihn automatisch. Der Wert kommt in den passenden vollwertigen Typ. `$n` ist zwar als nativer `int` deklariert. Aber `.^name` meldet seinen Typ trotzdem als den geboxten `Int`.

</div>

{% include nav.html %}
