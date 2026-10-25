---
title: '`say`'
---

{% include menu.html %}

Die eingebaute Routine `say` macht vier Dinge:

1. Ruft die Methode `gist` auf ihren Argumenten auf.
1. Fügt ein Zeilenumbruchzeichen hinzu.
1. Konvertiert das Ergebnis in UTF-8.
1. Sendet es an den `STDOUT`-Stream.

Für den Benutzer ist das einfach. `say` druckt den Wert einer Variablen im Terminal. Dann fügt `say` einen Zeilenumbruch hinzu.

Der erste Schritt braucht etwas Erklärung. Jeder eingebaute Datentyp hat eine Methode `gist`. Ganzzahlen und Zeichenketten sind Beispiele für solche Typen. Bei diesen einfachen Typen gibt `gist` das Element als gut lesbaren Wert zurück.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Manche Daten sind komplexer, zum Beispiel Arrays oder Hashes. Bei solchen Daten fügt `gist` etwas Formatierung hinzu.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Man kann `say` als Funktion aufrufen. Man kann `say` auch als Methode aufrufen:

```raku
say 42;
say(42);
42.say;
```

Man kann mehr als ein Argument an `say` übergeben. `say` verbindet die Teile der Ausgabe. Dazwischen stehen keine Leerzeichen.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
