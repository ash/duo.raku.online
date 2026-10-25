---
title: 'Quiz — Postfixa `for`'
---

{% include menu.html %}

Comple programma. Pone `for` post clausulam. Programma hunc textum imprimere debet:

    A
    A
    B
    B
    C
    C

Hic est initium codicis:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for 'A'..'C';

<div class="extended-explanation">Hic clausula codicis <code>for</code> post se habet. Verbum <code>for</code> in eadem linea esse debet atque <code>}</code>. Si <code>for</code> in nova linea est, anulus clausulam non habet. Tum Raku errorem ostendit antequam programma currit: <code>Missing block</code>. Tenta clausulas hoc modo vitare.</div>

{% include quiz.html %}

{% include nav.html %}
