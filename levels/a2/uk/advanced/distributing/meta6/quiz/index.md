---
title: 'Тест — Дистрибутиви'
translations_gpt:
---

{% include menu.html %}

Один файл зберігає назву й версію дистрибутива Raku. Також він каже, що дистрибутив надає. Що це за файл?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Файл `META6.json` описує дистрибутив. Це файл JSON у верхньому каталозі. Його ключ `provides` пов'язує ім'я кожного модуля з його файлом вихідного коду. Ключ `depends` перелічує інші дистрибутиви, які потрібні дистрибутиву.

</div>

{% include nav.html %}
