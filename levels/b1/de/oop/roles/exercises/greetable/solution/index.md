---
title: 'Lösung: Eine Schachtel mit Größe'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Rolle liefert die Methode `describe`, und die Klasse bindet sie mit `does Sized` ein. Die Methode braucht `self.size`, das die Klasse `Box` liefert. So passen Rolle und Klasse zusammen und bilden das vollständige Objekt.

1. `Box` erfüllt die Rolle, also ist der Smartmatch `$b ~~ Sized` `True`. Ein Objekt gilt als Träger jeder Rolle, die seine Klasse einbindet. Das hilft Ihnen zu prüfen, was ein Objekt kann, bevor Sie eine Methode der Rolle aufrufen.

{% include nav.html %}
