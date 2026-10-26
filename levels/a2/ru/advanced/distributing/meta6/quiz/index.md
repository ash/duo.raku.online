---
title: Тест — Дистрибутивы
translations_gpt:
---

{% include menu.html %}

В одном файле есть имя и версия дистрибутива Raku. Ещё он говорит, что дистрибутив предоставляет. Какой это файл?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Файл `META6.json` описывает дистрибутив. Это JSON-файл в корневой директории. Его ключ `provides` связывает имя каждого модуля с его исходным файлом. Ключ `depends` перечисляет другие дистрибутивы, которые нужны дистрибутиву.

</div>

{% include nav.html %}
