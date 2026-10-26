---
title: Тест — Stash
---

{% include menu.html %}

Модулът `Greeting` експортира `hello`. Той има и `our $version`. Какво връща `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` е `our` променливата на модула. Тя е в списъка със сигила си. `EXPORT` е пакет. Raku го добавя автоматично. В него са имената с `is export`. Затова експортираната `hello` е в `EXPORT`. Тя не е отделно име в пакета.

</div>

{% include nav.html %}
