---
title: 'Lösung: Ein laufender Roboter'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Du findest den Quellcode in der Datei [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Ausgabe

```
8
```

## Kommentare

1. Das Attribut `position` hat `is rw`. Also kann die Methode es ändern. Sein Standardwert ist `0`, also startet ein neuer Roboter im Ursprung.

1. Die Methode `move` gibt ihrem Parameter einen Standardwert: `$steps = 1`. Also bewegt `$r.move` ohne Argument den Roboter einen Schritt. `$r.move(5)` und `$r.move(2)` bewegen ihn um die angegebene Zahl. Die drei Aufrufe addieren `5 + 1 + 2`. Also ist die letzte Position `8`.

{% include nav.html %}
