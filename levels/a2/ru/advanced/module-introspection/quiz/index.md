---
title: Тест — Stash
translations_gpt:
---

{% include menu.html %}

Модуль `Greeting` экспортирует `hello`. Ещё в нём есть `our $version`. Что возвращает `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` — это переменная `our` модуля. Она есть в списке вместе с сигилом. `EXPORT` — это пакет. Raku добавляет его автоматически. В нём лежат имена с `is export`. Поэтому экспортированная `hello` находится в `EXPORT`. Это не отдельное имя в пакете.

</div>

{% include nav.html %}
