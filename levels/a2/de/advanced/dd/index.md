---
title: Debugging mit `dd`
---

{% include menu.html %}

Du kannst ein Programm auf verschiedene Arten debuggen. Debuggen heißt: Fehler finden und beheben. Am einfachsten gibst du Werte mit `say` aus. Es gibt auch komplexere Werkzeuge. Sie folgen dem Programm Schritt für Schritt. In diesem Abschnitt schauen wir uns die nützliche Routine `dd` an. Sie ist in den Rakudo-Compiler eingebaut. Aber sie gehört nicht zum Raku-Sprachstandard.

Der Name `dd` bedeutet _Data Dumper_. Ein Data Dumper gibt Daten für den Programmierer aus. `say` und `put` sind für die normale Ausgabe eines Programms. Aber `dd` ist anders. `dd` zeigt einen Wert in einer Form für Programmierer. Diese Form sieht wie Code aus. Es ist dieselbe Form wie bei der [`.raku`-Methode](/de/advanced/representations/raku-method). Du hast diese Methode im letzten Abschnitt gesehen. `dd` schreibt seine Ausgabe auf den Standardfehlerstream. Deshalb mischt sie sich nicht mit der Ausgabe für den Benutzer.

{% include nav.html %}
