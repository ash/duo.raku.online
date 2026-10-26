---
title: Werte in Text umwandeln
---

{% include menu.html %}

Wenn ein Programm einen Wert zeigt, muss es diesen Wert in Text umwandeln. Das passiert, wenn du den Wert mit `say` ausgibst, ihn druckst oder in einen String einfügst. Raku hat dafür nicht nur einen festen Weg. Stattdessen hat jeder Wert ein paar Standardmethoden. Jede davon erzeugt einen String für einen anderen Zweck:

* `.gist` — eine Form, die für Menschen leicht zu lesen ist. Diese Form gibt `say` aus.
* `.Str` — die einfache Stringform, für Stellen, an denen Raku einen String braucht.
* `.raku` — eine codeähnliche Form, die beim Debuggen nützlich ist.

Alle drei sind gewöhnliche Methoden, die jeder Wert in Raku hat. Deshalb funktionieren sie gleich bei Zahlen, Strings, Arrays und deinen eigenen Objekten. Die nächsten Seiten sehen sich jede Methode einzeln an. Dann helfen sie dir, die richtige auszuwählen. [Der Abschnitt danach stellt `dd` vor](/de/advanced/dd), ein Rakudo-Werkzeug, das auf `.raku` aufbaut.

{% include nav.html %}
