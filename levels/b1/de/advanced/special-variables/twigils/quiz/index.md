---
title: Quiz — Twigils
---

{% include menu.html %}

Welches Twigil kennzeichnet eine **dynamische** Variable, die Raku über den Aufrufstapel findet?

{:.quiz}
1 | `*`
0 | `?`
0 | `!`
0 | `.`

{% include quiz.html %}

<div class="extended-explanation">

Das Twigil `*` kennzeichnet eine dynamische Variable, zum Beispiel `$*OUT` oder `$*greeting`. Das Twigil `?` steht für Kompilierzeit-Werte, und `!` steht für ein privates Attribut. Das Twigil `.` steht für den Accessor eines Attributs.

</div>

{% include nav.html %}
