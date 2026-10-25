---
title: 'Quiz: Zeichenketteninterpolation'
---

{% include menu.html %}

Sehen Sie sich diese Zeichenfolgen an. In einigen davon interpoliert Raku `$x` genau einmal. Wählen Sie diese Zeichenfolgen aus.

{:.quiz}
1 | &quot;Die Temperatur beträgt $x Grad&quot;
0 | &apos;Der Luftdruck beträgt $x mmHg&apos; | Keine Interpolation bei einfachen Anführungszeichen.
0 | &apos;Der Wert von \\$x ist $x&apos; | Keine Interpolation und kein Escaping. Es wird `Der Wert von \$x ist $x` ausgegeben.
1 | &quot;Der Wert von \\$x ist $x&quot; | Der gesamte Satz ergibt zum Beispiel `Der Wert von $x ist 42`.
0 | &quot;Der Wert von $x ist $x&quot; | `$x` wird hier zweimal interpoliert.

{% include quiz.html %}
{% include nav.html %}
