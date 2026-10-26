---
title: Quiz — Twigils
---

{% include menu.html %}

Raku findet eine **dynamische** Variable über den Aufrufstapel. Welches Twigil zeigt, dass eine Variable dynamisch ist?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

Das Twigil `*` zeigt eine dynamische Variable, wie in `$*OUT` oder `$*greeting`. Das Twigil `?` ist für Kompilierzeit-Werte. `!` ist für ein privates Attribut. Und `.` ist für den Accessor eines Attributs.

</div>

{% include nav.html %}
