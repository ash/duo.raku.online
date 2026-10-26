---
title: 'Solution: Nach Typ abgleichen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Hier ist der Wert zum Vergleichen ein Typ. Dann prüft der Smart Match, ob das Thema *von diesem Typ ist*. `3.14` ist kein `Int`, also wird das erste `when` übersprungen.

1. In Raku ist eine Dezimalzahl wie `3.14` ein `Rat`, eine rationale Zahl. Also passt das zweite `when`, und das Programm gibt `rational` aus.

{% include nav.html %}
