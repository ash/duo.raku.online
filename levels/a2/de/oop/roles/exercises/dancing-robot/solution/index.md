---
title: 'Lösung: Ein tanzender Roboter'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Du findest den Quellcode in der Datei [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Ausgabe

```
beep
beep
spinning around
```

## Kommentare

1. Das ist anders als in den früheren Beispielen. `Dancing` ersetzt keine Methode, die schon da ist. Die Rolle bringt eine ganz neue Methode mit, `dance`. Die Klasse `Robot` weiß nichts von dieser Methode.

1. `Robot.new but Dancing` mischt die Rolle in ein einzelnes Objekt. Das passiert, während das Programm läuft. Also kann `$dancing` zwei Dinge. Es kann `speak`, aus der Klasse. Es kann auch `dance`, aus der Rolle. Der einfache `$plain` kennt nur `speak`.

1. Die neue Fähigkeit gehört nur zu diesem einen Objekt. Sie gehört nicht zur Klasse `Robot`. Also gibt `$plain.dance` einen Fehler. `$plain` hat die Rolle nie bekommen.

{% include nav.html %}
