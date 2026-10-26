---
title: Quiz — Export pittacia
translations_gpt:
---

{% include menu.html %}

Modulus `sub hello is export` et `sub goodbye is export(:partings)` habet. Programma `use Greeting :partings;` habet. Quae subprogrammata programma directe vocare potest?

{:.quiz}
1 | Solum `goodbye`
0 | Solum `hello`
0 | Et `hello` et `goodbye`
0 | Neutrum eorum

{% include quiz.html %}

<div class="extended-explanation">

Cum tessera, `use` gregem eius *loco* gregis praedefiniti importat. Itaque `:partings` `goodbye` adducit, sed non `hello`. Ut utrumque accipias, tesseram inbuiltam `:ALL` pete: `use Greeting :ALL;`.

</div>

{% include nav.html %}
