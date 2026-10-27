---
title: Dateihandles
translations_gpt:
---

{% include menu.html %}

Eine ganze Datei auf einmal zu lesen oder zu schreiben ist einfach. Aber manchmal möchten Sie eine Datei Zeile für Zeile durchgehen. Oder Sie möchten eine Datei offen halten und viele Male hineinschreiben. Dafür verwenden Sie einen _Dateihandle_.

Hier ist der einfachste Weg, eine Datei Zeile für Zeile zu lesen. Sie müssen dafür nicht einmal einen Handle erstellen. Die Methode `lines` eines Pfadobjekts gibt Ihnen die Zeilen einzeln. Diese sind bereit für eine `for`-Schleife:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Jede `$line` ist eine Zeile ohne den Zeilenumbruch an ihrem Ende. Das Programm gibt aus:

```
ONE
TWO
THREE
```

Um über einen Handle zu schreiben, öffnen Sie die Datei mit `open` und dem Schalter `:w` (write). Verwenden Sie dann die Methoden `say` oder `print` des Handles. Wenn Sie fertig sind, schließen Sie ihn mit `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Das Schließen des Handles sorgt dafür, dass alles Geschriebene wirklich auf der Festplatte landet. Manche Dateien sind zu groß, um sie auf einmal in den Speicher zu laden. Solche Dateien lesen Sie meistens Zeile für Zeile, wie oben.

{% include nav.html %}
