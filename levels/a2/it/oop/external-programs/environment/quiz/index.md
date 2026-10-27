---
title: "Quiz — L'ambiente"
translations_gpt:
---

{% include menu.html %}

Quale variabile contiene le variabili d'ambiente del programma?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` è l'hash dinamico con le variabili d'ambiente. Leggi una variabile con il suo nome, come in `%*ENV<HOME>`. `@*ARGS` è diverso. Contiene gli argomenti della riga di comando. Sono i valori dopo il nome del programma nel comando.

</div>

{% include nav.html %}
