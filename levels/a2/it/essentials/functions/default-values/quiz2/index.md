---
title: Quiz — Funzioni con valori predefiniti
---

{% include menu.html %}

Ecco una funzione. La chiami con argomenti diversi. Qual è il risultato ogni volta?

```raku
sub f($a, $b = 4, $c = 5) {
    $a + $b + $c
}
```

{:.quiz-select}
10 | `f(1)` restituisce&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 :)
8 | `f(1, 2)` restituisce&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 :)
6 | `f(1, 2, 3)` restituisce&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 :)

{% include quiz.html %}

{% include nav.html %}
