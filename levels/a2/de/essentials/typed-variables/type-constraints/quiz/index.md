---
title: Quiz — Typbeschränkungen
---

{% include menu.html %}

Geben Sie jeder Variablen im Programm unten einen Typ. Wählen Sie den engsten Typ, der den Wert enthalten kann.

{:.quiz-code}
Int | my ␣␣␣ $a = 500;
Int | my ␣␣␣ $b = 304839573985398539853535353; | Lange Zahlen werden von Haus aus unterstützt.
Rat | my ␣␣␣ $c = 3.5; | Dies ist ein `Rat`. Beachten Sie, dass `Num`-Werte in wissenschaftlicher Notation geschrieben werden.
Rat | my ␣␣␣ $d = 17/19; | Dies ist ebenfalls ein `Rat` und keine Division.
Rat | my ␣␣␣ $e = <2/5>; | Dies ist eine der möglichen Notationen für `Rat`s.
Num | my ␣␣␣ $f = pi; | Der eingebaute Wert von π ist ein `Num`-Wert.
Num | my ␣␣␣ $g = 3e-4;
Str | my ␣␣␣ $h = &apos;18&apos;;

{% include quiz.html %}

{% include nav.html %}
