---
title: '`say`'
---

{% include menu.html %}

Das macht die eingebaute Routine `say`:

1. Ruft die Methode `gist` auf ihren Argumenten auf.
1. Fügt ein Zeilenumbruchzeichen hinzu.
1. Konvertiert das Ergebnis in UTF-8.
1. Sendet es an den `STDOUT`-Stream.

Für den Benutzer sieht das einfach aus. `say` druckt nur den Inhalt einer Variablen auf das Terminal und fügt einen Zeilenumbruch hinzu.

Der erste Schritt braucht etwas Erklärung. Jeder eingebaute Datentyp, zum Beispiel Ganzzahlen oder Zeichenketten, hat eine Methode `gist`. Bei solchen einfachen Typen gibt sie einen Wert zurück, der das Element darstellt. Menschen können diesen Wert leicht lesen.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Arrays und Hashes sind Beispiele für komplexere Daten. Bei ihnen fügt die Methode `gist` etwas Formatierung hinzu.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Man kann `say` sowohl als Funktion als auch als Methode aufrufen:

```raku
say 42;
say(42);
42.say;
```

Man kann mehrere Argumente an `say` übergeben. Die Routine verbindet die Teile der Ausgabe ohne Leerzeichen dazwischen.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
