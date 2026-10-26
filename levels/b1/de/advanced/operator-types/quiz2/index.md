---
title: Quiz — Präfix oder Postfix
translations_gpt:
---

{% include menu.html %}

Sie haben `++` *nach* einer Variablen gesehen, als Postfix. Sie können es auch *vor* die Variable schreiben. Zu welcher Kategorie gehört `++` in `++$x`?

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

Die Kategorie hängt nur von der *Position* ab. In `++$x` steht der Operator vor seinem einzigen Operanden, also ist er ein **Präfix**-Operator. Genau dasselbe `++` ist ein Postfix, wenn es danach steht, wie in `$x++`. Beide Formen erhöhen `$x` um eins. Die Präfix-Form gibt den neuen Wert zurück, deshalb wird hier `6` ausgegeben.

</div>

{% include nav.html %}
