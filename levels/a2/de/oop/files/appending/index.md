---
title: An eine Datei anhängen
translations_gpt:
---

{% include menu.html %}

Normalerweise ersetzt `spurt` den ganzen alten Inhalt der Datei. Aber vielleicht möchten Sie etwas am Ende einer Datei hinzufügen. Übergeben Sie dafür das benannte Argument `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Das zweite `spurt` behält den alten Inhalt. Es setzt die neue Zeile dahinter. Am Ende hat die Datei also beide Zeilen:

```
line1
line2
```

Ohne `:append` überschreibt der zweite Aufruf die Datei. Dann hat die Datei nur `line2`. Das Hinzufügen am Ende einer Datei heißt Anhängen. Das ist zum Beispiel für Protokolldateien nützlich. Eine Protokolldatei notiert die Arbeit eines Programms. Jeder Lauf des Programms fügt etwas zu diesem Protokoll hinzu. So wächst das Protokoll. Das Programm beginnt nicht wieder mit einer leeren Datei.

{% include nav.html %}
