---
title: 'Solution: Boolesche Tabellen'
---

{% include menu.html %}

Hier ist ein mögliches Programm. Es gibt die Ergebnisse aller booleschen Operationen aus.

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

Wenn du das Programm ausführst, gibt es die folgende Tabelle aus.

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

Beachte, dass die booleschen Operationen hier keine Klammern brauchen. Sie haben eine höhere Priorität. Aber das gilt nicht, wenn du Zeichenketten verkettest:

```raku
say 'True && True is ' ~ (True && True);
```

Eine andere Möglichkeit ist [Code-Interpolation](/de/essentials/strings/code-interpolation).

{% include nav.html %}
