---
title: Quiz — Tag di esportazione
translations_gpt: 'Quiz — Tag di esportazione'
---

{% include menu.html %}

Un modulo dichiara `sub hello is export` e `sub goodbye is export(:partings)`. Quali subroutine può chiamare direttamente un programma dopo `use Greeting :partings;`?

{:.quiz}
1 | Solo `goodbye`
0 | Solo `hello`
0 | Sia `hello` sia `goodbye`
0 | Nessuna delle due

{% include quiz.html %}

<div class="extended-explanation">

Se indichi un tag, `use` importa quel gruppo *al posto di* quello predefinito. Quindi `:partings` porta `goodbye` ma lascia fuori `hello`. Per averle entrambe, dovresti chiedere il tag integrato `:ALL` con `use Greeting :ALL;`.

</div>

{% include nav.html %}
