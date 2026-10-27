---
title: Mit Dateien arbeiten
translations_gpt:
---

{% include menu.html %}

Hier ist der einfachste Weg, mit einer Datei zu arbeiten. Sie lesen oder schreiben die ganze Datei auf einmal.

Die Routine `spurt` schreibt eine Zeichenkette in eine Datei. Sie legt die Datei an. Oder sie ersetzt den alten Inhalt, wenn die Datei schon da ist:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

Die Routine `slurp` liest die ganze Datei. Sie gibt Ihnen den Inhalt als Zeichenkette:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Mit `spurt` und `slurp` speichern Sie Daten und laden sie wieder. Sie brauchen nur zwei kurze Aufrufe. Hier verwenden wir `print` und nicht `say`. Der Grund: Der Text endet schon mit einem Zeilenumbruch.

Diese Routinen arbeiten mit der ganzen Datei auf einmal. Sie sind gut für kleine Dateien. Eine kleine Datei passt leicht in den Speicher. Für eine große Datei verwenden Sie einen [Dateihandle](/de/oop/file-handles). Den brauchen Sie auch, um eine Datei Zeile für Zeile zu bearbeiten. Sie lernen ihn am Ende dieses Abschnitts kennen. Das nächste Thema zeigt, wie Sie etwas zu einer Datei hinzufügen. Der alte Inhalt der Datei bleibt dabei da.

{% include nav.html %}
