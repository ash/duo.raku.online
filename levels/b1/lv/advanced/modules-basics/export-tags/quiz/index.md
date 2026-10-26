---
title: Viktorīna — Eksporta tagi
translations_gpt:
---

{% include menu.html %}

Modulis deklarē `sub hello is export` un `sub goodbye is export(:partings)`. Kuras apakšprogrammas programma var izsaukt tieši pēc `use Greeting :partings;`?

{:.quiz}
1 | Tikai `goodbye`
0 | Tikai `hello`
0 | Gan `hello`, gan `goodbye`
0 | Nevienu no abām

{% include quiz.html %}

<div class="extended-explanation">

Ja nosaucat birku, `use` importē šo grupu *noklusētās vietā*. Tāpēc `:partings` ienes `goodbye`, bet izlaiž `hello`. Lai iegūtu abas, jūs prasītu iebūvēto birku `:ALL` ar `use Greeting :ALL;`.

</div>

{% include nav.html %}
