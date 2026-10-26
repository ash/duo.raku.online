---
title: Quiz — Spezielle Variablen
---

{% include menu.html %}

Welche eingebaute Variable enthält die Kommandozeilenargumente des Programms?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Die Kommandozeilenargumente kommen als *Liste*. Also hat die Variable das Sigil `@`. Sie ist auch dynamisch, also hat sie das Twigil `*`. Das Ergebnis ist `@*ARGS`. `%*ENV` ist der Hash der Umgebung. Er enthält nicht die Argumente. `@*ARGV` ist der Name in Perl. Raku verwendet ihn nicht.

</div>

{% include nav.html %}
