---
title: 'Solution: Ein verschachtelter Name'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Wenn du einen Namensraum in einen anderen setzt, bekommst du einen längeren `::`-Pfad. Die Variable und die Subroutine liegen beide zwei Ebenen tief, in `Outer::Inner`.

1. Der volle Name `$Outer::Inner::base` erreicht die Variable. `Outer::Inner::doubled()` erreicht die Subroutine über dieselben zwei Ebenen. Ein Subroutinenname hat kein Sigil. Anders als bei der Variable steht also kein `$` davor.

1. Beide Mitglieder sind mit `our` deklariert. Genau das macht sie außerhalb ihres Moduls sichtbar. Mit `my` würden sie privat in `Inner` bleiben.

{% include nav.html %}
