---
title: Quiz — Pragmas
translations_gpt:
---

{% include menu.html %}

Das `strict`-Pragma von Raku ist standardmäßig eingeschaltet. Was passiert, wenn Sie einer Variablen etwas zuweisen, die Sie nie deklariert haben, wie in `$x = 42`?

{:.quiz}
1 | Es ist ein Kompilierzeitfehler
0 | Es erzeugt stillschweigend `$x`
0 | Es gibt eine Warnung aus, läuft aber
0 | Es setzt `$x` auf `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` ist standardmäßig eingeschaltet. Es verlangt, dass Sie jede Variable zuerst mit `my` deklarieren. Also lässt sich `$x = 42` ohne `my` nicht kompilieren. Der Fehler ist *Variable '$x' is not declared*. Wenn Sie das Pragma mit `no strict` ausschalten, funktioniert die Zuweisung.

</div>

{% include nav.html %}
