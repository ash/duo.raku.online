---
title: 'Solution: Nach Typ abgleichen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Du findest den Quellcode in der Datei [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Ausgabe

```
rational
```

## Kommentare

1. Manchmal hat `when` einen Typ. Dann prüft der Smart Match, ob das Thema *diesen Typ hat*. `3.14` ist kein `Int`. Also überspringt Raku das erste `when`.

1. In Raku ist eine Zahl mit Dezimalpunkt, wie `3.14`, ein `Rat`. Ein `Rat` ist eine rationale Zahl, also ein Bruch. Deshalb passt das zweite `when`. Das Programm gibt `rational` aus.

{% include nav.html %}
