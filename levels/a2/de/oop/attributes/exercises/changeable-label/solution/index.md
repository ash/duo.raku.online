---
title: 'Lösung: Ein änderbares Etikett'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Der Trait `is rw` ändert den Accessor. Jetzt gibt er einen Container zurück, in den Sie schreiben können. Also kann der Accessor links von einer Zuweisung stehen.

1. Sie können in den Container schreiben. Also funktioniert auch der Operator `~=` damit. Dieser Operator verbindet Zeichenketten und macht die Zuweisung in einem Schritt. `$l.text ~= ' (revised)'` liest den aktuellen Text. Er hängt den neuen Teil an das Ende an. Dann speichert er das Ergebnis zurück. Das alles geht über denselben Accessor.

{% include nav.html %}
