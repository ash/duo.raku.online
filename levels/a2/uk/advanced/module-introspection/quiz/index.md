---
title: 'Тест — Stash'
translations_gpt:
---

{% include menu.html %}

Модуль `Greeting` експортує `hello`. Також він має `our $version`. Що повертає `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` — це змінна `our` модуля. Вона є у списку разом із сигілом. `EXPORT` — це пакунок. Raku додає його автоматично. Він містить імена з `is export`. Тож експортована `hello` лежить в `EXPORT`. Вона не є окремим ім'ям у пакунку.

</div>

{% include nav.html %}
