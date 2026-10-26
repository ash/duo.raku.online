---
title: 'Solution: Einen Schlüssel löschen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Das Adverb `:delete` entfernt den Eintrag aus dem Hash. Es gibt auch den Wert zurück, aber hier ignorieren wir ihn.

1. Der Hash hatte am Anfang drei Einträge, und jetzt hat er `2`. Das zeigt, dass einer entfernt wurde. Wir zählen mit `.elems`, das nicht von der Reihenfolge der Schlüssel abhängt. Also ist die Ausgabe immer gleich.

{% include nav.html %}
