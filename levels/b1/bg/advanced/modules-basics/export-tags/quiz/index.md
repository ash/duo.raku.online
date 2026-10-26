---
title: Тест — Тагове за експортиране
translations_gpt:
---

{% include menu.html %}

Модул декларира `sub hello is export` и `sub goodbye is export(:partings)`. Кои подпрограми може програмата да извика директно след `use Greeting :partings;`?

{:.quiz}
1 | Само `goodbye`
0 | Само `hello`
0 | И `hello`, и `goodbye`
0 | Нито една от двете

{% include quiz.html %}

<div class="extended-explanation">

Ако посочите таг, `use` импортира тази група *вместо* групата по подразбиране. Затова `:partings` внася `goodbye`, но оставя `hello` настрана. За да получите и двете, трябва да поискате вградения таг `:ALL` с `use Greeting :ALL;`.

</div>

{% include nav.html %}
