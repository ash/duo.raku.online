---
title: Ausführen von der Befehlszeile
---

{% include menu.html %}

Speichern Sie das Programm in einer Textdatei, zum Beispiel `hello.raku`. Dann geben Sie dem Kommandozeilen-Tool `raku` den Pfad zur Datei. Hier ist das Dollarzeichen die Eingabeaufforderung der Shell:

```console
$ raku hello.raku
```

Wenn das Programm keine Fehler hat, läuft es sofort. Wenn es etwas ausgibt, sehen Sie das Ergebnis im Terminal:

```console
$ raku hello.raku 
Hallo, Welt!
```

Auf Unix-basierten Systemen können Sie eine Shebang-Zeile hinzufügen. Das ist eine besondere erste Zeile. Sie können die Datei auch ausführbar machen:

```raku
#!/usr/bin/env raku

say 'Hallo, Welt!';
```

Hier sind die nächsten Schritte:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hallo, Welt!
```

{% include nav.html %}
