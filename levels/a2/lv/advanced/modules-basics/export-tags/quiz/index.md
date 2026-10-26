---
title: Viktorīna — Eksporta tagi
translations_gpt:
---

{% include menu.html %}

Modulim ir `sub hello is export` un `sub goodbye is export(:partings)`. Programmā ir `use Greeting :partings;`. Kuras apakšprogrammas programma var izsaukt tieši?

{:.quiz}
1 | Tikai `goodbye`
0 | Tikai `hello`
0 | Gan `hello`, gan `goodbye`
0 | Nevienu no abām

{% include quiz.html %}

<div class="extended-explanation">

Ar birku `use` importē tās grupu *noklusētās grupas vietā*. Tāpēc `:partings` ienes `goodbye`, bet ne `hello`. Lai iegūtu abas, prasiet iebūvēto birku `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
