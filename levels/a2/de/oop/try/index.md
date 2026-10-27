---
title: Ausnahmen mit `try` fangen
translations_gpt:
---

{% include menu.html %}

Manchmal geht in einem Raku-Programm etwas schief. Zum Beispiel fehlt eine Datei, oder der Code ruft `die` auf. Dann wirft das Programm einen Fehler. Diese Art von Fehler heißt _Ausnahme_. Wenn kein Code die Ausnahme behandelt, hält das Programm an. Das ist der Normalfall. Hier hilft der `try`-Block. Das ist ein Codeblock mit dem Wort `try` davor. Code in diesem Block kann fehlschlagen. Aber das Programm stürzt nicht ab.

Sie schreiben den Code, der fehlschlagen kann, in einen `try`-Block. Vielleicht wirft der Code im Block eine Ausnahme. Dann endet der Block an dieser Stelle. Aber das Programm läuft weiter:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

Das `try` fängt das `die`. Also stürzt das Programm nicht ab. Es geht direkt zur nächsten Anweisung weiter. Es gibt Folgendes aus:

```
Still works
```

Hier schlägt der Block fehl. Dann ergibt er einen undefinierten Wert. Also ist `$result` undefiniert:

```raku
say $result.defined; # False
```

Raku speichert die gefangene Ausnahme in der besonderen Variablen `$!`. Dort können Sie die Meldung der Ausnahme lesen:

```raku
say $!.message; # Boom!
```

`try` hilft also bei einem fatalen Fehler. Ohne `try` hält so ein Fehler das Programm an. Mit `try` kann Ihr Programm den Fehler ansehen. Dann kann es darauf reagieren. Was ist, wenn der Block ohne Ausnahme läuft? Dann enthält `$result` den Wert des Blocks. In diesem Fall ist `$!` undefiniert.

{% include nav.html %}
