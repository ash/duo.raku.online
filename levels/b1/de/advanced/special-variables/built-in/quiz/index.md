---
title: Quiz — Spezielle Variablen
---

{% include menu.html %}

In welcher eingebauten Variable findest du die Kommandozeilenargumente des Programms?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Die Kommandozeilenargumente kommen als *Liste*. Also hat die Variable das Sigil `@` und das dynamische Twigil `*`: `@*ARGS`. `%*ENV` ist der Umgebungs-Hash und nicht die Argumente. `@*ARGV` ist die Schreibweise von Perl, und Raku verwendet diesen Namen nicht.

</div>

{% include nav.html %}
