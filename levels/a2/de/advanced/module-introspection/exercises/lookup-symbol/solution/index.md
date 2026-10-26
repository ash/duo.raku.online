---
title: 'Solution: Ein Symbol nachschlagen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

Das Programm, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Du findest beide Quelldateien im Verzeichnis [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Ausgabe

```console
$ raku -I. lookup.raku
3.14
```

## Kommentare

1. `Circle::` ist der Stash des Moduls. Du benutzt einen Namen als Schlüssel: `Circle::{'$pi'}`. Das gibt den Wert für diesen Namen. Der Schlüssel muss das Sigil haben. Die Namen in der Liste haben es auch.

1. Du bekommst denselben Wert wie mit dem vollen Namen `$Circle::pi`. Aber hier ist der Name ein normaler String. Also kann das Programm den Namen bilden, während es läuft. Du musst ihn nicht in den Quellcode schreiben.

{% include nav.html %}
