---
title: Debugging mit `dd`
---

{% include menu.html %}

Es gibt verschiedene Wege, ein Programm zu debuggen. Du kannst Werte einfach mit `say` ausgeben. Oder du verwendest fortgeschrittene Werkzeuge, die das Programm verfolgen. In diesem Abschnitt schauen wir uns die nützliche Routine `dd` an. Sie gehört zum Rakudo-Compiler, aber der Raku-Sprachstandard enthält sie nicht.

Der Name `dd` steht für _Data Dumper_. Die Routinen `say` und `put` sind für die normale Ausgabe eines Programms gedacht. Aber `dd` gibt einen Wert in einer Form aus, die für Entwickler nützlich ist. Das ist dieselbe codeähnliche Form, die du von der [`.raku`-Methode](/de/advanced/representations/raku-method) bekommst. Wir haben diese Methode im vorherigen Abschnitt gesehen. `dd` schreibt auf den Standardfehlerstream. Deshalb mischt sich seine Ausgabe nicht mit dem, was dein Programm für den Benutzer ausgibt.

{% include nav.html %}
