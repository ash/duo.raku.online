---
title: 'Lösung: Eine Schachtel mit Größe'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Du findest den Quellcode in der Datei [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Ausgabe

```
size is 10
True
```

## Kommentare

1. Die Rolle bringt die Methode `describe` mit. Die Klasse bindet die Rolle mit `does Sized` ein. Das heißt, sie nimmt die Rolle in sich auf. Die Methode braucht `self.size`. Die Klasse `Box` bringt `size` mit. Die Rolle und die Klasse passen zusammen. Zusammen bilden sie das ganze Objekt.

1. `Box` erfüllt die Rolle. Also ist der Smartmatch `$b ~~ Sized` `True`. Ein Objekt hat jede Rolle, die seine Klasse einbindet. Raku weiß das. Das ist nützlich. Sie können prüfen, was ein Objekt kann. Tun Sie das, bevor Sie eine Methode einer Rolle aufrufen.

{% include nav.html %}
