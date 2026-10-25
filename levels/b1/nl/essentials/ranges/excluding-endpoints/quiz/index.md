---
title: Quiz — Reeksen maken
---

{% include menu.html %}

Selecteer de regels met correcte Raku-syntaxis.

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
1 | ^ 50 | Goed, maar ziet er een beetje vreemd uit.
0 | 60^ | Geen geldige syntaxis.

## Opmerkingen

Alle bereikoperators zijn ononderbroken rijen tekens, net als de andere operators in Raku. Dus je kunt geen spatie tussen hun delen zetten.

{% include quiz.html %}

{% include nav.html %}
