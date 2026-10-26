---
title: Тест — Stash
translations_gpt:
---

{% include menu.html %}

Модуль `Greeting` экспортирует `hello` и определяет `our $version`. Что возвращает `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` — это переменная `our` модуля, и в списке она стоит вместе с сигилом. `EXPORT` — это пакет, который Raku добавляет автоматически для имён с `is export`. Поэтому экспортированная `hello` появляется там, а не как отдельное имя в пакете.

</div>

{% include nav.html %}
