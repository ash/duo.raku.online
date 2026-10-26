---
title: 'Тест — Дистрибутиви'
translations_gpt:
---

{% include menu.html %}

Який файл описує дистрибутив Raku: його назву, версію і те, що він надає?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` описує дистрибутив. Це файл JSON у верхньому каталозі дистрибутива. Його ключ `provides` пов'язує ім'я кожного модуля з файлом вихідного коду. Ключ `depends` перелічує інші дистрибутиви, які йому потрібні.

</div>

{% include nav.html %}
