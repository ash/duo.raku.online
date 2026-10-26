---
title: Тест — Дистрибутивы
translations_gpt:
---

{% include menu.html %}

Какой файл описывает дистрибутив Raku: его имя, версию и то, что он предоставляет?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` описывает дистрибутив. Это JSON-файл в корневой директории дистрибутива. Его ключ `provides` связывает имя каждого модуля с исходным файлом. Ключ `depends` перечисляет другие дистрибутивы, которые ему нужны.

</div>

{% include nav.html %}
