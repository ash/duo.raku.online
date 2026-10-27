---
title: Quiz — Eseguire programmi
translations_gpt:
---

{% include menu.html %}

Quale funzione manda il suo comando attraverso la **shell** di sistema? Questa funzione ti permette di usare pipe e redirezioni.

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` dà una singola stringa alla shell. La shell capisce funzionalità come le pipe. `run` avvia un programma direttamente. Prende argomenti separati e non usa nessuna shell. Questo è più sicuro. Quindi `run` è la scelta predefinita migliore.

</div>

{% include nav.html %}
