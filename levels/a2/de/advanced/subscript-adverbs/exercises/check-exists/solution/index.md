---
title: 'Solution: Existiert der Schlüssel'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Das Adverb `:exists` sagt dir, ob der Schlüssel da ist. Es holt nicht den Wert.

1. Im Hash gibt es keinen Schlüssel `z`. Also ist das Ergebnis `False`. Eine normale Abfrage kann den Schlüssel als Nebeneffekt erzeugen. `:exists` macht das nicht.

{% include nav.html %}
