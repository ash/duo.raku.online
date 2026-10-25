---
title: Introspektion mit `WHAT`
---

{% include menu.html %}

Um den Datentyp in einer Variablen zu sehen, rufen Sie die Methode `WHAT` auf:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Wie Sie in den Kommentaren sehen, wird der Typ in Klammern ausgegeben. Zum Beispiel `(Int)` oder `(Str)`.

Es ist kein Problem, eine Methode direkt auf einem Literal aufzurufen. Zum Beispiel:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Beachten Sie, dass wir `-1` in Klammern setzen. Ohne sie würde `say -1.WHAT` versuchen, ein Minus vor das Ergebnis von `1.WHAT` zu setzen. Das führt zu einer Ausnahme.

{% include nav.html %}
