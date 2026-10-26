---
title: Тест — Дистрибуции
translations_gpt:
---

{% include menu.html %}

В един файл са името и версията на дистрибуция на Raku. Той казва също какво предоставя дистрибуцията. Кой е този файл?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Файлът `META6.json` описва дистрибуцията. Това е JSON файл в главната директория. Ключът му `provides` свързва всяко име на модул с неговия изходен файл. Ключът `depends` изброява другите дистрибуции, от които дистрибуцията има нужда.

</div>

{% include nav.html %}
