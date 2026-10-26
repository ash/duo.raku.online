---
title: 'Solution: Ein Mathematik-Modul'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen. Die Lösung benutzt zwei Dateien.

## Code

Das Modul, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

Das Programm, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Du findest die Quelldateien im Verzeichnis [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module).

## Ausgabe

```console
$ raku -I. maths.raku
36
```

## Kommentare

1. Das Modul markiert `square` mit `is export`. Also kann ein Programm, das das Modul benutzt, `square` aufrufen.

1. Die Option `-I.` setzt das aktuelle Verzeichnis auf den Modul-Suchpfad. Also findet Raku `Maths.rakumod` neben dem Programm.

{% include nav.html %}
