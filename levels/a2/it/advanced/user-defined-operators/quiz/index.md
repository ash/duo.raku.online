---
title: Quiz — Definire un operatore
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | un errore

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` definisce un nuovo operatore. Lo scrivi tra i suoi due operandi. Il suo corpo li moltiplica. Così `6 times 7` dà `42`. Un operatore è solo una subroutine con un nome speciale.

</div>

{% include nav.html %}
