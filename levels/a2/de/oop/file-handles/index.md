---
title: Dateihandles
translations_gpt:
---

{% include menu.html %}

Es ist leicht, eine ganze Datei auf einmal zu lesen oder zu schreiben. Aber manchmal möchten Sie eine Datei Zeile für Zeile durchgehen. Oder Sie möchten viele Male in eine Datei schreiben. Die Datei muss die ganze Zeit offen bleiben. Dafür verwenden Sie einen _Dateihandle_. Ein Dateihandle ist ein Objekt für eine offene Datei. Damit lesen Sie aus der Datei oder schreiben hinein.

Hier ist der einfachste Weg, eine Datei Zeile für Zeile zu lesen. Sie müssen nicht einmal selbst einen Handle erstellen. Rufen Sie die Methode `lines` auf einem Pfadobjekt auf. Die Methode gibt Ihnen die Zeilen eine nach der anderen. Die Zeilen sind bereit für eine `for`-Schleife:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Jede `$line` ist eine Zeile. Am Ende steht kein Zeilenumbruch. Das Programm gibt aus:

```
ONE
TWO
THREE
```

Sie können auch über einen Handle in eine Datei schreiben. Öffnen Sie die Datei zuerst mit `open` und dem Schalter `:w`. Der Schalter bedeutet *write*, also schreiben. Verwenden Sie dann die Methoden `say` oder `print` des Handles. Am Ende schließen Sie ihn mit `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Schließen Sie den Handle am Ende. Dann kommen alle Ihre Daten wirklich auf die Festplatte. Manche Dateien sind zu groß für den Speicher. Sie können sie nicht auf einmal lesen. Solche Dateien lesen Sie meistens Zeile für Zeile, wie oben.

{% include nav.html %}
