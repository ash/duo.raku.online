---
title: Ausgabe mit `say`
---

{% include menu.html %}

Die `say`-Funktion druckt Werte in den Standardausgabestream, `STDOUT`. Sie heißt auch Subroutine oder einfach Routine. Wenn Sie das Programm in einem Terminal ausführen, erscheint die Ausgabe dort. Bei Online-Diensten kommt sie in einen speziellen Bereich der Webseite.

Hier ist ein Beispiel für die Verwendung von `say`:

```raku
say 42;
```

Diese Zeile kann Teil eines größeren Programms oder das ganze Programm sein. Natürlich druckt sie `42` in die Ausgabe.

Arbeiten wir nun mit Zeichenketten:

```raku
say 'Hello, World!';
```

Und da ist es: `Hello, World!` auf dem Bildschirm.

`say` kann mehrere Argumente nehmen, sodass wir mehr Werte auf einmal drucken können:

```raku
say 42, 'Hello, World!';
```

Beachten Sie nur, dass die Teile zu einer Zeichenkette verbunden werden: `42Hello, World!`. Deshalb ist es besser, ein Leerzeichen dazwischen zu setzen. Sie sollten dieses Problem jetzt schon lösen können. Zum Beispiel so:

```raku
say 42, ' ', 'Hello, World!';
```

Nach allen Argumenten fügt `say` ein Zeilenumbruchzeichen zur Ausgabe hinzu.

{% include nav.html %}
