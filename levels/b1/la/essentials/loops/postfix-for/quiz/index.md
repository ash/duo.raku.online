---
title: 'Quiz — Postfixa `for`'
---

{% include menu.html %}

Conare programma complere ut formam postfixam `for` adhibeat et textum sequentem imprimat:

    A
    A
    B
    B
    C
    C

Hic est adumbratio codicis:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for 'A'..'C';

<div class="extended-explanation">Hic codex exemplum est clausulae codicis cum <code>for</code> postfixo. Nota quod <code>for</code> in eadem linea esse debet atque uncus curvus claudens. Si id in nova linea ponis, clausula ab anulo separatur, et errorem compilationis accipis: <code>Missing block</code>. Fortasse melius est non adhibere clausulas codicis cum structuris postfixis hoc modo.</div>

{% include quiz.html %}

{% include nav.html %}
