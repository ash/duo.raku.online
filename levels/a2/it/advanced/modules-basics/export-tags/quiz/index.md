---
title: Quiz — Tag di esportazione
translations_gpt: 'Quiz — Tag di esportazione'
---

{% include menu.html %}

Un modulo ha `sub hello is export` e `sub goodbye is export(:partings)`. Un programma ha `use Greeting :partings;`. Quali subroutine può chiamare direttamente il programma?

{:.quiz}
1 | Solo `goodbye`
0 | Solo `hello`
0 | Sia `hello` sia `goodbye`
0 | Nessuna delle due

{% include quiz.html %}

<div class="extended-explanation">

Con un tag, `use` importa il suo gruppo *al posto del* gruppo predefinito. Quindi `:partings` porta `goodbye`, ma non `hello`. Per averle tutte e due, chiedi il tag integrato `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
