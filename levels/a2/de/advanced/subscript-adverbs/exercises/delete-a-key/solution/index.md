---
title: 'Solution: Einen Schlüssel löschen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Du findest den Quellcode in der Datei [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Ausgabe

```
2
```

## Kommentare

1. Das Adverb `:delete` entfernt den Eintrag aus dem Hash. Es gibt auch den Wert zurück, aber hier verwenden wir ihn nicht.

1. Am Anfang hatte der Hash drei Einträge. Jetzt hat er `2`. Also ist ein Eintrag weg. Wir zählen die Einträge mit `.elems`. Die Reihenfolge der Schlüssel spielt dafür keine Rolle. Also ist die Ausgabe immer gleich.

{% include nav.html %}
