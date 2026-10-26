---
title: Quiz — Pakete
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`$x` ist mit `my` deklariert, also ist sie lexikalisch und kommt nie in den `M`-Namensraum. Deshalb findet der Pfad `$M::x` nichts, nur einen undefinierten Wert. Also ergibt `.defined` den Wert `False`. Nur eine `our`-Variable wäre auf diese Weise erreichbar.

</div>

{% include nav.html %}
