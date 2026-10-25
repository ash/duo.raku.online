---
title: Quiz 1 — Benoemde parameters
---

{% include menu.html %}

Kijk naar deze functie:

```raku
sub f(:$a, :$b) {
    $a - $b
}
```

## 1

Welke aanroepen van deze functie zijn juist?

{:.quiz}
0 | f(1, 2) | Positionele argumenten doorgegeven, niet genaamd.
1 | f(a => 1, b => 2)
0 | f(a = 1, b = 2) | Toewijzingsoperator in plaats van een paarconstructor.
1 | f(b => 2, a => 1)

## 2

Dit is dezelfde functie. Wat geven deze aanroepen terug?

{:.quiz-select}
−1 | `f(a => 1, b => 2)` retourneert&nbsp; (: 1, −1 :)
−1 | `f(b => 2, a => 1)` retourneert&nbsp; (: 1, −1 :) | De volgorde van genaamde argumenten maakt niet uit.
1 | `f(a => 2, b => 1)` retourneert&nbsp; (: 1, −1 :)

{% include quiz.html %}

{% include nav.html %}
