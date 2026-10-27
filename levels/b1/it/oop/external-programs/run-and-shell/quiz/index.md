---
title: Quiz — Eseguire programmi
translations_gpt:
---

{% include menu.html %}

Quale funzione manda il suo comando attraverso la **shell** di sistema e permette pipe e redirezioni?

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` passa una singola stringa alla shell, che capisce funzionalità come le pipe. `run` avvia un programma direttamente, con argomenti separati e senza shell. Questo è più sicuro, quindi `run` è la scelta predefinita migliore.

</div>

{% include nav.html %}
