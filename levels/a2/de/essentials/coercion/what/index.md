---
title: Introspektion mit `WHAT`
---

{% include menu.html %}

Sie können den Datentyp in einer Variablen sehen. Rufen Sie dafür die Methode `WHAT` auf:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku gibt den Typ in Klammern aus. Das sehen Sie in den Kommentaren. Zum Beispiel `(Int)` oder `(Str)`.

Sie können eine Methode auch direkt auf einem Literal aufrufen. Ein Literal ist ein Wert im Code. Zum Beispiel:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Beachten Sie die Klammern um `-1`. Wir brauchen sie hier. Sehen Sie sich `say -1.WHAT` ohne Klammern an. Hier ruft Raku zuerst `1.WHAT` auf. Dann versucht Raku, ein Minus vor das Ergebnis zu setzen. Das führt zu einer Ausnahme, einer Art Fehler.

{% include nav.html %}
