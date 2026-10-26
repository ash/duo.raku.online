---
title: 'Тест — Stash'
translations_gpt:
---

{% include menu.html %}

Модуль `Greeting` експортує `hello` й визначає `our $version`. Що повертає `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` — це змінна `our` модуля, і в списку вона стоїть разом із сигілом. `EXPORT` — це пакунок, який Raku автоматично додає для імен з `is export`. Тож експортована `hello` з'являється там, а не як окреме ім'я в пакунку.

</div>

{% include nav.html %}
