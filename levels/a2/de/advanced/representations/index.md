---
title: Werte in Text umwandeln
---

{% include menu.html %}

Manchmal zeigt ein Programm einen Wert. Du kannst ihn mit `say` ausgeben, drucken oder in einen String setzen. In all diesen Fällen muss der Wert zu Text werden. Raku hat dafür nicht nur einen festen Weg. Stattdessen hat jeder Wert ein paar Standardmethoden. Jede Methode macht einen String für einen anderen Zweck:

* `.gist` — eine Form zum Lesen für Menschen. `say` gibt diese Form aus.
* `.Str` — die einfache Stringform. Raku verwendet sie, wenn es einen String braucht.
* `.raku` — eine Form wie Code. Sie ist nützlich, wenn du ein Programm debuggst.

Alle drei sind normale Methoden. Jeder Wert in Raku hat sie. Deshalb funktionieren sie für jeden Wert gleich. Das kann eine Zahl, ein String oder ein Array sein. Es kann auch ein eigenes Objekt sein. Die nächsten Seiten zeigen jede Methode, eine nach der anderen. Dann helfen sie dir, die richtige auszuwählen. [Im Abschnitt danach geht es um `dd`](/de/advanced/dd). Das ist ein Werkzeug in Rakudo. Es baut auf `.raku` auf.

{% include nav.html %}
