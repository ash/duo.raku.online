---
title: Quiz — Einen Operator definieren
---

{% include menu.html %}

Was gibt dieses Programm aus?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` definiert einen neuen Operator. Du schreibst ihn zwischen seine zwei Operanden. Sein Rumpf multipliziert sie. Also ergibt `6 times 7` den Wert `42`. Ein Operator ist einfach eine Subroutine mit einem speziellen Namen.

</div>

{% include nav.html %}
