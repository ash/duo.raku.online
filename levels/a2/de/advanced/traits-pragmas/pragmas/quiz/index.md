---
title: Quiz — Pragmas
translations_gpt:
---

{% include menu.html %}

In Raku ist das Pragma `strict` standardmäßig eingeschaltet. Sie deklarieren eine Variable nicht, aber Sie weisen ihr einen Wert zu. Zum Beispiel `$x = 42`. Was passiert?

{:.quiz}
1 | Es ist ein Kompilierzeitfehler
0 | Es erzeugt stillschweigend `$x`
0 | Es gibt eine Warnung aus, läuft aber
0 | Es setzt `$x` auf `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` ist standardmäßig eingeschaltet. Damit müssen Sie jede Variable zuerst mit `my` deklarieren. Also lässt sich `$x = 42` ohne `my` nicht kompilieren. Der Fehler ist *Variable '$x' is not declared*. Mit `no strict` ist das Pragma aus. Dann funktioniert die Zuweisung.

</div>

{% include nav.html %}
