---
title: 'Solution: Die Themenvariable'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Eine `for`-Schleife setzt die Topic-Variable `$_` der Reihe nach auf jedes Element. Also läuft der Block dreimal, und `$_` ist `'apple'`, dann `'fig'`, dann `'cherry'`.

1. Innerhalb der Zeichenkette fügt `$_` das aktuelle Wort ein. Der Aufruf `.chars`, kurz für `$_.chars`, liefert seine Länge. Beide verwenden dasselbe Topic, also passt die Zahl immer zum Wort in der Zeile.

{% include nav.html %}
