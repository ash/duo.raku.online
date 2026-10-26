---
title: Die richtige Methode wählen
---

{% include menu.html %}

Nimm einfache Skalare, wie Zahlen und Strings. Hier sehen alle drei Formen gleich aus. Bei Werten mit mehreren Teilen sind sie verschieden. Bei undefinierten Werten sind sie auch verschieden. Hier ist ein `Pair`, auf drei Arten gezeigt:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Hier ist eine einfache Regel:

* [`.gist`](../gist) — für Ausgaben, die Menschen *lesen* (`say`, `note`).
* [`.Str`](../str) — für Ausgaben als *reiner Text* (`print`, `put`, Werte in Strings, der Operator `~`).
* [`.raku`](../raku-method) — für eine Form *wie Code*, wenn du debuggst (`dd`).

Du kannst eigene Klassen schreiben. In einer Klasse kannst du jede dieser Methoden selbst definieren. Dann gibt Raku auch deine eigenen Objekte schön aus. Darauf kommen wir im nächsten Teil zurück. Dort [erstellen wir Klassen](/de/oop/classes).

{% include nav.html %}
