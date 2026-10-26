---
title: 'Solution: Existiert der Schlüssel'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Du findest den Quellcode in der Datei [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Ausgabe

```
False
```

## Kommentare

1. Das Adverb `:exists` sagt dir, ob der Schlüssel vorhanden ist. Es holt den Wert nicht.

1. Im Hash gibt es keinen Schlüssel `z`, also ist das Ergebnis `False`. Eine normale Abfrage kann den Schlüssel als Nebeneffekt erzeugen, aber `:exists` tut das nicht.

{% include nav.html %}
