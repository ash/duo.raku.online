---
title: Tests ausführen
---

{% include menu.html %}

Eine einzelne Testdatei ist einfach ein Raku-Programm. Also kannst du sie direkt ausführen:

```
raku t/01-basic.rakutest
```

Sie gibt ihre TAP-Ausgabe auf dem Bildschirm aus. Wenn du mehr als ein oder zwei Dateien hast, brauchst du einen _Test-Runner_. Er führt ein ganzes Verzeichnis von Tests aus und fasst die Ergebnisse zusammen. Der Runner für Raku ist `prove6`:

```
prove6 t/
```

Das führt jede Testdatei unter `t/` aus und meldet, wie viele Dateien und Tests bestanden wurden. Am Ende gibt es ein Gesamtergebnis, bestanden oder fehlgeschlagen. Das ist viel leichter zu lesen als das rohe TAP aus jeder Datei.

Wenn eine Distribution eine `META6.json` hat, kann das Modultool ihre Tests für dich ausführen:

```
zef test .
```

`zef test` findet das Verzeichnis `t/`, führt die Tests aus und meldet das Ergebnis. Genau dasselbe passiert automatisch, bevor eine Distribution installiert wird. Tests haben also zwei Aufgaben. Du führst sie mit `prove6` aus, während du entwickelst. Das Ökosystem führt sie aus, um eine Distribution zu prüfen, bevor jemand sie installiert.

> Testdateien haben die Endung `.rakutest` (oder `.t`). Sie haben meist Nummern im Namen, wie in `t/01-basic.rakutest`.

{% include nav.html %}
