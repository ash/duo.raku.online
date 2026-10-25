---
title: Quiz — Creazione di intervalli
---

{% include menu.html %}

Scegli le righe che sono codice Raku corretto.

{:.quiz}
1 | 1..10
1 | 1 .. 10
1 | -1..20
0 | -1 . . 20
1 | 6^..10
0 | 7^.. ^10
1 | 10..^20
1 | 30^..^30
0 | 30 ^ .. ^ 30
1 | 30 ^..^ 30
1 | ^40
1 | ^ 50 | Va bene, ma sembra un po' strano.
0 | 60^ | Sintassi non valida.

## Commenti

Ogni operatore di intervallo è un solo gruppo di caratteri, senza spazi dentro. Questo vale anche per gli altri operatori di Raku. Quindi non puoi mettere uno spazio tra le parti di un operatore.

{% include quiz.html %}

{% include nav.html %}
