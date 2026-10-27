---
title: Mit Dateien arbeiten
translations_gpt:
---

{% include menu.html %}

Im einfachsten Fall lesen oder schreiben Sie eine ganze Datei auf einmal.

Die Routine `spurt` schreibt eine Zeichenkette in eine Datei. Sie legt die Datei an oder ersetzt ihren Inhalt, falls die Datei schon existiert:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

Die Routine `slurp` liest die ganze Datei zurück in eine Zeichenkette:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Zusammen speichern `spurt` und `slurp` Daten und laden sie wieder, mit nur zwei kurzen Aufrufen. Wir verwenden hier `print` statt `say`, weil der Text schon mit einem Zeilenumbruch endet.

Diese Routinen arbeiten mit der ganzen Datei auf einmal. Sie sind am besten für Dateien, die so klein sind, dass sie leicht in den Speicher passen. Für größere Dateien verwenden Sie einen [Dateihandle](/de/oop/file-handles). Sie brauchen ihn auch, um eine Datei Zeile für Zeile zu bearbeiten. Dateihandles behandeln wir am Ende dieses Abschnitts. Das nächste Thema zeigt, wie Sie etwas an eine Datei anhängen, statt sie zu ersetzen.

{% include nav.html %}
