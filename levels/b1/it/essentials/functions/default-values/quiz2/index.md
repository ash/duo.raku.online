---
title: Quiz — Funzioni con valori predefiniti
---

{% include menu.html %}

Cosa restituisce la seguente funzione quando la chiami con argomenti diversi?

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
