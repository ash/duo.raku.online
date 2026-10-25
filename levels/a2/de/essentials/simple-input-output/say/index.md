---
title: Ausgabe mit `say`
---

{% include menu.html %}

Die `say`-Funktion druckt Werte in den Standardausgabestream, `STDOUT`. Man nennt sie auch Subroutine oder einfach Routine. Führen Sie das Programm in einem Terminal aus? Dann sehen Sie die Ausgabe dort. Nutzen Sie einen Online-Dienst? Dann kommt die Ausgabe in einen besonderen Bereich der Webseite.

Hier ist ein Beispiel für die Verwendung von `say`:

```raku
say 42;
```

Diese Zeile kann Teil eines größeren Programms sein. Sie kann auch das ganze Programm sein. Natürlich druckt sie `42` in die Ausgabe.

Jetzt probieren wir eine Zeichenkette:

```raku
say 'Hello, World!';
```

Gut! Jetzt steht `Hello, World!` auf dem Bildschirm.

Die `say`-Routine kann mehr als ein Argument nehmen. So können wir mehrere Werte auf einmal drucken:

```raku
say 42, 'Hello, World!';
```

Aber sehen Sie sich die Ausgabe an. Ihre Teile sind zu einer Zeichenkette verbunden: `42Hello, World!`. Deshalb ist es besser, ein Leerzeichen dazwischen zu setzen. Sie können dieses Problem schon lösen. Zum Beispiel so:

```raku
say 42, ' ', 'Hello, World!';
```

Die `say`-Routine druckt alle Argumente. Dann fügt sie ein Zeilenumbruchzeichen zur Ausgabe hinzu.

{% include nav.html %}
