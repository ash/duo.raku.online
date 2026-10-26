---
title: 'Lösung: Ein Zähler'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Du findest den Quellcode in der Datei [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Ausgabe

```
0
5
```

## Kommentare

1. Das Attribut hat `is rw`. Also gibt sein Accessor einen Container zurück, in den Sie schreiben können. `= 0` gibt dem Attribut einen Startwert. Das erste `say` prüft einen neuen Zähler. Er beginnt wirklich beim Standardwert, `0`.

1. Sie können in den Accessor schreiben. Also funktioniert `++` wie erwartet. Es erhöht den Zähler um 1.

{% include nav.html %}
