---
title: Ausführen von der Befehlszeile
---

{% include menu.html %}

Speichern Sie den Programmtext in einer Textdatei, zum Beispiel `hello.raku`. Dann übergeben Sie ihren Pfad an das Kommandozeilen-Tool `raku`. Das Dollarzeichen zeigt die Eingabeaufforderung der Shell:

```console
$ raku hello.raku
```

Wenn das Programm keine Fehler enthält, wird es sofort ausgeführt. Wenn es eine Ausgabe gibt, sehen Sie sie im Terminal:

```console
$ raku hello.raku 
Hallo, Welt!
```

Auf Unix-basierten Systemen können Sie eine Shebang-Zeile hinzufügen und die Datei ausführbar machen:

```raku
#!/usr/bin/env raku

say 'Hallo, Welt!';
```

Die nächsten Schritte sind die folgenden:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hallo, Welt!
```

{% include nav.html %}
