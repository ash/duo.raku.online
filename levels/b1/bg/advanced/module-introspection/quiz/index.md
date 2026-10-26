---
title: Тест — Stash
---

{% include menu.html %}

Модулът `Greeting` експортира `hello` и дефинира `our $version`. Какво връща `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` е `our` променливата на модула и е изброена заедно със сигила си. `EXPORT` е пакет, който Raku добавя автоматично за имената с `is export`. Затова експортираната `hello` се появява там, а не като отделно име в пакета.

</div>

{% include nav.html %}
