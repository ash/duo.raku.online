---
title: Quiz — Creando intervalla
---

{% include menu.html %}

Select the lines with correct Raku syntax.

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
1 | ^ 50 | Fine, but looks a bit weird.
0 | 60^ | Not a valid syntax.

## Commentarii

Omnes operatores intervallorum sunt series characterum non interruptae, sicut alii operatores in Raku. Itaque spatium inter partes eorum ponere non potes.

{% include quiz.html %}

{% include nav.html %}
