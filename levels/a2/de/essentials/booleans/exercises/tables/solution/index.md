---
title: 'Solution: Boolesche Tabellen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung der Aufgabe. Das Programm gibt alle Ergebnisse der booleschen Operationen aus.

## Code

```raku
say 'True && True is ', True && True; 
say 'True && False is ', True && False;
say 'False && True is ', False && True;
say 'False && False is ', False && False;

say 'True || True is ', True || True; 
say 'True || False is ', True || False;
say 'False || True is ', False || True;
say 'False || False is ', False || False;

say 'True ^^ True is ', True ^^ True; 
say 'True ^^ False is ', True ^^ False;
say 'False ^^ True is ', False ^^ True;
say 'False ^^ False is ', False ^^ False;
```

🦋 Du findest den vollständigen Code in der Datei [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Ausgabe

Führe das Programm aus. Es gibt diese Tabelle aus.

```console
$ raku tables.raku
True && True is True
True && False is False
False && True is False
False && False is False
True || True is True
True || False is True
False || True is True
False || False is False
True ^^ True is Nil
True ^^ False is True
False ^^ True is True
False ^^ False is False
```

## Kommentare

Beachte: Hier brauchst du keine Klammern um die booleschen Operationen. Das liegt an der Priorität. Die Priorität ist die Reihenfolge, in der Raku Operationen ausführt. Die booleschen Operationen haben eine höhere Priorität. Deshalb führt Raku sie zuerst aus. Aber beim Verketten von Zeichenketten brauchst du die Klammern:

```raku
say 'True && True is ' ~ (True && True);
```

Du kannst den Code auch in die Zeichenkette schreiben. Das heißt [Code-Interpolation](/de/essentials/strings/code-interpolation).

{% include nav.html %}
