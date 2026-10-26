---
title: Die richtige Methode wählen
---

{% include menu.html %}

Bei alltäglichen Skalaren wie Zahlen und Strings sehen alle drei Darstellungen gleich aus. Der Unterschied zeigt sich bei zusammengesetzten oder undefinierten Werten. Hier ist ein `Pair`, auf drei Arten gezeigt:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Hier ist eine grobe allgemeine Regel:

* [`.gist`](../gist) — für Ausgaben, die Menschen *lesen* sollen (`say`, `note`).
* [`.Str`](../str) — für Ausgaben als *reiner Text* (`print`, `put`, Variablen in Strings, der Operator `~`).
* [`.raku`](../raku-method) — für eine *codeähnliche* Form beim Debuggen (`dd`).

Wenn du eine Klasse schreibst, kannst du jeder dieser Methoden eine eigene Definition geben. Dann werden auch deine eigenen Objekte schön ausgegeben. Darauf kommen wir zurück, wenn wir im nächsten Teil [Klassen erstellen](/de/oop/classes).

{% include nav.html %}
