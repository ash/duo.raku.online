---
title: 'Solution: Ein Shout-Modul'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen. Die Lösung benutzt zwei Dateien.

## Code

Das Modul, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Das Programm, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Du findest die Quelldateien im Verzeichnis [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Ausgabe

```console
$ raku -I. shout.raku
HI
```

## Kommentare

1. `shout` hat den Trait `is export`. Also kann jedes Programm, das das Modul benutzt, sie sehen.

1. Die Methode `.uc` gibt die Zeichenkette in Großbuchstaben zurück, also groß geschrieben.

{% include nav.html %}
