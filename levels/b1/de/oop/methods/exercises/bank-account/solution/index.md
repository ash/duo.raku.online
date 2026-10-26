---
title: 'Lösung: Ein laufender Roboter'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Das Attribut `position` hat `is rw`, also kann die Methode es ändern. Sein Standardwert ist `0`, also startet ein neuer Roboter im Ursprung.

1. Die Methode `move` gibt ihrem Parameter einen Standardwert, `$steps = 1`. Deshalb bewegt der Aufruf `$r.move` ohne Argument um einen Schritt. Aber `$r.move(5)` und `$r.move(2)` bewegen um die angegebene Anzahl von Schritten. Die drei Aufrufe ergeben zusammen `5 + 1 + 2`, also ist die Endposition `8`.

{% include nav.html %}
