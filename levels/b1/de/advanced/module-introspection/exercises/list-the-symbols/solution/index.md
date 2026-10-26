---
title: 'Solution: Die Symbole auflisten'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `Circle::` ist das Package des Moduls. `.keys` listet die Namen auf, die es enthält, jeweils mit ihrem Sigil.

1. `.elems` zählt diese Namen. Das Modul definiert zwei `our`-Variablen, also ist die Anzahl `2`.

1. `.keys` verspricht keine bestimmte Reihenfolge. Darum benutzen wir `.sort`, das jedes Mal dasselbe alphabetische Ergebnis liefert: `($pi $tau)`. Ohne Sortieren könnte sich die Reihenfolge der beiden Namen von Lauf zu Lauf ändern.

{% include nav.html %}
