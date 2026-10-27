---
title: Dateien und Verzeichnisse löschen
translations_gpt:
---

{% include menu.html %}

`spurt` und `mkdir` legen Dinge auf der Festplatte an. Zwei andere Routinen entfernen Dinge von der Festplatte.

Die Routine `unlink` löscht eine Datei:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` löscht die Datei mit dem genannten Namen. Wie andere Dateisystemroutinen ist `unlink` auch eine Methode. Sie rufen sie auf einem Pfadobjekt auf: `'temp.txt'.IO.unlink`.

Das Löschen passiert sofort und gilt für immer. Es gibt keinen Papierkorb. Sie bekommen die Datei nicht zurück. Beachten Sie noch etwas. Nach dem Löschen prüfen Sie die Datei mit `.e`. Diese Methode prüft, ob der Pfad existiert. Nehmen Sie hier nicht `.f`. Die Prüfungen `.f` und `.d` prüfen den Typ des Pfads. Diese Prüfungen werfen einen Fehler, wenn der Pfad nicht da ist.

Die Routine `rmdir` entfernt ein Verzeichnis. Aber das Verzeichnis muss **leer** sein:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Wenn das Verzeichnis nicht leer ist, entfernt `rmdir` nichts. Das Verzeichnis bleibt an seinem Platz. Ein Verzeichnis mit Dateien löschen Sie also in zwei Schritten. Zuerst machen Sie es leer. Dann entfernen Sie es:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` gibt eine Liste der Einträge im Verzeichnis. Sie haben das im vorigen Thema gesehen. Das Programm ruft für jeden Eintrag `.unlink` auf. Das entfernt alle Einträge. Jetzt ist das Verzeichnis leer. Also kann `rmdir` das Verzeichnis entfernen. Diese einfache Schleife erwartet nur Dateien im Verzeichnis. Aber ein Verzeichnis kann auch andere Verzeichnisse enthalten. Dann müssen Sie zuerst jedes innere Verzeichnis leeren. Das geht auf die gleiche Weise.

{% include nav.html %}
