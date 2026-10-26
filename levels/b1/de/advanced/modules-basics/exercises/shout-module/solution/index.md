---
title: 'Solution: Ein Shout-Modul'
---

{% include menu.html %}

Hier ist eine mögliche Lösung. Sie benutzt zwei Dateien.

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

1. Dank dem Trait `is export` kann jedes Programm, das das Modul benutzt, `shout` sehen.

1. Die Methode `.uc` gibt die Zeichenkette in Großbuchstaben zurück.

{% include nav.html %}
