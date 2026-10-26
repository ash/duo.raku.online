---
title: 'Solution: Begin zuerst'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `BEGIN { 2 + 3 }` läuft während der Kompilierung und ergibt `5`. Wenn du einen `BEGIN`-Block als Ausdruck verwendest, gibt er seinen Wert zurück. Hier wird dieser Wert `$compiled` zugewiesen.

1. Die Berechnung passiert nur einmal, zur Kompilierzeit. Wenn das Programm läuft, enthält `$compiled` einfach die Konstante `5`. So kann `BEGIN` Werte im Voraus berechnen. Es ist nicht nur dazu da, früh etwas auszugeben.

{% include nav.html %}
