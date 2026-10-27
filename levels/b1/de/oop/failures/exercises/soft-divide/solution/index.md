---
title: 'Lösung: Weicher Kehrwert'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Du findest den Quellcode in der Datei [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Ausgabe

```
0.25
undefined
```

## Kommentare

1. `reciprocal(4)` funktioniert normal und gibt `1 / 4` zurück, also `0.25`.

1. `reciprocal(0)` ruft `fail` auf, also gibt es ein `Failure` zurück, das undefiniert ist. Der Operator `//` gibt seine rechte Seite zurück, sobald seine linke Seite undefiniert ist. Also bekommen wir den Ersatzwert `undefined`.

1. `//` zu verwenden zählt als Behandlung des Fehlschlags. Der Operator prüft, ob der Wert definiert ist, aber er verwendet den Wert nicht. Also bleibt das `Failure` weich und wird nie als echte Ausnahme geworfen.

{% include nav.html %}
