---
title: 'Solution: Begin zuerst'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Du findest den Quellcode in der Datei [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Ausgabe

```
5
```

## Kommentare

1. `BEGIN { 2 + 3 }` läuft während der Kompilierung. Das ergibt `5`. Hier ist der `BEGIN`-Block ein Ausdruck. Also gibt er seinen Wert zurück. Das Programm legt diesen Wert in `$compiled` ab.

1. Die Rechnung passiert nur einmal, zur Kompilierzeit. Wenn das Programm läuft, hat `$compiled` einfach den festen Wert `5`. So kannst du mit `BEGIN` Werte früh berechnen. `BEGIN` ist nicht nur für frühe Ausgaben da.

{% include nav.html %}
