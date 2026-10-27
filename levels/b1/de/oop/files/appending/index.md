---
title: An eine Datei anhängen
translations_gpt:
---

{% include menu.html %}

Normalerweise ersetzt `spurt` alles, was in der Datei stand. Um stattdessen etwas am Ende einer bestehenden Datei hinzuzufügen, übergeben Sie das benannte Argument `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Das zweite `spurt` behält den alten Inhalt und setzt die neue Zeile dahinter. Am Ende enthält die Datei also beide Zeilen:

```
line1
line2
```

Ohne `:append` würde der zweite Aufruf die Datei überschreiben. Nur `line2` wäre übrig. Anhängen ist nützlich für Dinge wie Protokolldateien. Jeder Lauf eines Programms ergänzt ein wachsendes Protokoll, statt wieder von vorn zu beginnen.

{% include nav.html %}
