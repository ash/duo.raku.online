---
title: 'Lösung: Ein Ersatzwert'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Du findest den Quellcode in der Datei [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Ausgabe

```
5
default
```

## Kommentare

1. `get(5)` gibt ganz normal `5` zurück. Also behält `//` diesen Wert.

1. `get(0)` gibt ein `Failure` zurück. Ein `Failure` ist ein Wert mit einem Fehler darin. Es ist undefiniert. Also nimmt `//` den Ersatzwert, `'default'`. `//` behandelt das undefinierte `Failure` still. Er wirft keine Ausnahme.

{% include nav.html %}
