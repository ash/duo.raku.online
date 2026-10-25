---
title: Quiz 1 — Parametri nominati
---

{% include menu.html %}

Ecco una funzione:

```raku
sub f(:$a, :$b) {
    $a - $b
}
```

## 1

Quali sono i modi corretti per chiamarla?

{:.quiz}
0 | f(1, 2) | Argomenti posizionali passati, non nominati.
1 | f(a => 1, b => 2)
0 | f(a = 1, b = 2) | Operatore di assegnazione invece di un costruttore di coppie.
1 | f(b => 2, a => 1)

## 2

Cosa restituiscono queste chiamate della stessa funzione?

{:.quiz-select}
−1 | `f(a => 1, b => 2)` restituisce&nbsp; (: 1, −1 :)
−1 | `f(b => 2, a => 1)` restituisce&nbsp; (: 1, −1 :) | L'ordine degli argomenti nominati non importa.
1 | `f(a => 2, b => 1)` restituisce&nbsp; (: 1, −1 :)

{% include quiz.html %}

{% include nav.html %}
