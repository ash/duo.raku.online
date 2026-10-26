---
title: 'Solution: Die Symbole auflisten'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

Das Programm, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Du findest beide Quelldateien im Verzeichnis [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Ausgabe

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Kommentare

1. `Circle::` ist das Package des Moduls. `.keys` listet die Namen darin auf. Jeder Name hat sein Sigil.

1. `.elems` zählt diese Namen. Das Modul hat zwei `our`-Variablen. Also ist die Anzahl `2`.

1. `.keys` gibt die Namen nicht in einer festen Reihenfolge. Darum benutzen wir `.sort`. Das bringt die Namen in alphabetische Reihenfolge. Jetzt ist das Ergebnis immer gleich: `($pi $tau)`. Ohne Sortieren kann sich die Reihenfolge der zwei Namen ändern. Sie kann bei jedem Start des Programms anders sein.

{% include nav.html %}
