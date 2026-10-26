---
title: "Quiz — Pragma's"
translations_gpt:
---

{% include menu.html %}

Raku's pragma `strict` staat standaard aan. Wat gebeurt er als je toekent aan een variabele die je nooit hebt gedeclareerd, zoals in `$x = 42`?

{:.quiz}
1 | Het is een compilatiefout
0 | Het maakt stilzwijgend `$x` aan
0 | Het drukt een waarschuwing af maar draait
0 | Het zet `$x` op `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` staat standaard aan. Het eist dat je elke variabele eerst met `my` declareert. `$x = 42` zonder `my` compileert dus niet. De fout is *Variable '$x' is not declared*. Als je het pragma uitzet met `no strict`, werkt de toekenning wel.

</div>

{% include nav.html %}
