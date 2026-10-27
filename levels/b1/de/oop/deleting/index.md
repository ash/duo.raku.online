---
title: Dateien und Verzeichnisse löschen
translations_gpt:
---

{% include menu.html %}

`spurt` und `mkdir` legen Dinge auf der Festplatte an, und zwei andere Routinen entfernen sie.

Die Routine `unlink` löscht eine Datei:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` löscht die Datei mit dem genannten Namen. Wie die anderen Dateisystemroutinen hat sie auch eine Methodenform. Sie rufen sie auf einem Pfadobjekt auf: `'temp.txt'.IO.unlink`.

Das Löschen passiert sofort und ist endgültig. Es gibt keinen Papierkorb, aus dem Sie die Datei zurückholen können. Beachten Sie noch etwas zu einer gelöschten Datei. Sie müssen sie mit `.e` (Existenz) prüfen, nicht mit `.f`. Die Typprüfungen `.f` und `.d` werfen einen Fehler, wenn der Pfad nicht da ist.

Die Routine `rmdir` entfernt ein Verzeichnis, aber nur ein **leeres**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Wenn noch etwas im Verzeichnis ist, entfernt `rmdir` nichts. Das Verzeichnis bleibt, wo es ist. Um ein Verzeichnis mit Dateien zu löschen, leeren Sie es also zuerst und entfernen es dann:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` listet die Einträge des Verzeichnisses auf, wie Sie im vorigen Thema gesehen haben. Ein Aufruf von `.unlink` für jeden Eintrag entfernt ihn. Wenn das Verzeichnis leer ist, kann `rmdir` das Verzeichnis entfernen. Beachten Sie, dass diese einfache Schleife nur Dateien im Verzeichnis erwartet. Bei einem Baum mit verschachtelten Unterverzeichnissen bräuchte man Rekursion, um sie zuerst zu leeren.

{% include nav.html %}
