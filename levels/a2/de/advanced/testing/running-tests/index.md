---
title: Tests ausführen
---

{% include menu.html %}

Eine Testdatei ist einfach ein Raku-Programm. Also kannst du sie wie jedes Programm ausführen:

```
raku t/01-basic.rakutest
```

Sie gibt ihre TAP-Ausgabe auf dem Bildschirm aus. Aber vielleicht hast du mehr als ein oder zwei Dateien. Dann brauchst du einen _Test-Runner_. Er führt alle Tests in einem Verzeichnis aus. Dann gibt er eine kurze Zusammenfassung der Ergebnisse. Der Test-Runner von Raku ist `prove6`:

```
prove6 t/
```

Das führt jede Testdatei unter `t/` aus. Es zeigt, wie viele Dateien und Tests erfolgreich waren. Am Ende gibt es ein Ergebnis für alles: bestanden oder fehlgeschlagen. Das ist viel leichter zu lesen als das rohe TAP aus jeder Datei.

Vielleicht hat eine Distribution eine `META6.json`. Dann führt das Modultool ihre Tests für dich aus:

```
zef test .
```

`zef test` findet das Verzeichnis `t/`. Es führt alle Tests aus und zeigt das Ergebnis. Dasselbe passiert automatisch, bevor jemand eine Distribution installiert. Tests haben also zwei Aufgaben. Du führst sie mit `prove6` aus, während du an deinem Code arbeitest. Und das Ökosystem führt sie aus, bevor jemand eine Distribution installiert. So prüft es die Distribution.

> Testdateien haben die Endung `.rakutest` oder `.t`. Meistens fangen ihre Namen mit einer Zahl an, zum Beispiel `t/01-basic.rakutest`.

{% include nav.html %}
