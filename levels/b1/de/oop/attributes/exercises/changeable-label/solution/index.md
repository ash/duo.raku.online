---
title: 'Lösung: Ein änderbares Etikett'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Du findest den Quellcode in der Datei [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Ausgabe

```
draft (revised)
```

## Kommentare

1. Durch den Trait `is rw` gibt der Accessor einen schreibbaren Container zurück. Deshalb kann der Accessor auf der linken Seite einer Zuweisung stehen.

1. Weil der Container schreibbar ist, funktioniert auch der zusammengesetzte Operator `~=` damit. `$l.text ~= ' (revised)'` liest den aktuellen Text, hängt das neue Ende an und speichert das Ergebnis zurück. Das alles geschieht über denselben Accessor.

{% include nav.html %}
