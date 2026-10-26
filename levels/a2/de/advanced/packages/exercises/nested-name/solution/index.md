---
title: 'Solution: Ein verschachtelter Name'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Du findest den Quellcode in der Datei [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Ausgabe

```
10
20
```

## Kommentare

1. Hier ist ein Namensraum in einem anderen. Das ergibt einen längeren `::`-Pfad. Die Variable und die Subroutine sind zwei Ebenen tief, in `Outer::Inner`.

1. Der volle Name `$Outer::Inner::base` holt die Variable. `Outer::Inner::doubled()` holt die Subroutine, über dieselben zwei Ebenen. Der Name einer Sub hat kein Sigil. Also steht kein `$` davor, aber bei der Variable schon.

1. Beide haben `our` davor. Das macht sie außerhalb ihres Moduls sichtbar. Mit `my` würden sie privat in `Inner` bleiben.

{% include nav.html %}
