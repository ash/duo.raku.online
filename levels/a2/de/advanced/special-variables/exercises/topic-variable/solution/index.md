---
title: 'Solution: Die Themenvariable'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Du findest den Quellcode in der Datei [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Ausgabe

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Kommentare

1. In einer `for`-Schleife bekommt die Topic-Variable `$_` jedes Element, eins nach dem anderen. Also läuft der Block dreimal. Zuerst ist `$_` gleich `'apple'`, dann `'fig'`, dann `'cherry'`.

1. In der Zeichenkette setzt `$_` das aktuelle Wort in den Text. Der Aufruf `.chars` liefert die Länge des Wortes. Er ist kurz für `$_.chars`. Beide verwenden dasselbe Topic. Also passt die Zahl immer zum Wort in der Zeile.

{% include nav.html %}
