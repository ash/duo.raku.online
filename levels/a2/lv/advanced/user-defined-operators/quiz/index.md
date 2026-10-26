---
title: Viktorīna — Operatora definēšana
---

{% include menu.html %}

Ko izdrukā šī programma?

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

`infix:<times>` definē jaunu operatoru. Jūs to rakstāt starp tā diviem operandiem. Tā ķermenis tos sareizina. Tāpēc `6 times 7` dod `42`. Operators ir vienkārši apakšprogramma ar īpašu nosaukumu.

</div>

{% include nav.html %}
