---
title: Тест — Дистрибуции
translations_gpt:
---

{% include menu.html %}

Кой файл описва дистрибуция на Raku, с нейното име, версия и какво предоставя?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` описва дистрибуцията. Това е JSON файл в главната директория на дистрибуцията. Ключът му `provides` свързва всяко име на модул с неговия изходен файл. Ключът `depends` изброява другите дистрибуции, от които тя има нужда.

</div>

{% include nav.html %}
