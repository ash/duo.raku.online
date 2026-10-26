---
title: "Quiz — Pragma's"
translations_gpt:
---

{% include menu.html %}

In Raku staat het pragma `strict` standaard aan. Je declareert een variabele niet, maar je geeft hem wel een waarde. Bijvoorbeeld `$x = 42`. Wat gebeurt er?

{:.quiz}
1 | Het is een compilatiefout
0 | Het maakt stilzwijgend `$x` aan
0 | Het drukt een waarschuwing af maar draait
0 | Het zet `$x` op `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` staat standaard aan. Daardoor moet je elke variabele eerst met `my` declareren. `$x = 42` zonder `my` compileert dus niet. De fout is *Variable '$x' is not declared*. Met `no strict` staat het pragma uit. Dan werkt de toekenning wel.

</div>

{% include nav.html %}
