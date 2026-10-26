---
title: Quiz — Präfix oder Postfix
translations_gpt:
---

{% include menu.html %}

Sie haben `++` *nach* einer Variablen gesehen. Dort ist es ein Postfix. Sie können es auch *vor* eine Variable schreiben. Welche Kategorie hat `++` in `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

Nur die *Position* entscheidet über die Kategorie. In `++$x` steht der Operator vor seinem einen Operanden. Also ist er ein **Präfix**-Operator. Schreiben Sie dasselbe `++` dahinter, wie in `$x++`. Dann ist es ein Postfix. Beide Formen addieren 1 zu `$x`. Die Präfix-Form gibt den neuen Wert zurück. Also gibt das Programm `6` aus.

</div>

{% include nav.html %}
