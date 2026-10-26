---
title: Тест — Тагове за експортиране
translations_gpt:
---

{% include menu.html %}

Модулът има `sub hello is export` и `sub goodbye is export(:partings)`. Една програма има `use Greeting :partings;`. Кои подпрограми може програмата да извика директно?

{:.quiz}
1 | Само `goodbye`
0 | Само `hello`
0 | И `hello`, и `goodbye`
0 | Нито една от двете

{% include quiz.html %}

<div class="extended-explanation">

Ако дадете таг, `use` импортира неговата група *вместо* групата по подразбиране. Затова `:partings` внася `goodbye`, но не и `hello`. За да получите и двете, поискайте вградения таг `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
