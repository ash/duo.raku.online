---
title: 'Lösung: Weicher Kehrwert'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `reciprocal(4)` funktioniert ganz normal. Es gibt `1 / 4` zurück. Das ist `0.25`.

1. `reciprocal(0)` ruft `fail` auf. Also gibt es ein `Failure` zurück. Ein `Failure` ist ein undefinierter Wert mit einem Fehler darin. Der Operator `//` sieht sich seine linke Seite an. Wenn die linke Seite undefiniert ist, gibt `//` seine rechte Seite zurück. Also bekommen wir den Ersatzwert, `undefined`.

1. Die Benutzung von `//` zählt als Behandlung des Fehlschlags. `//` prüft nur, ob der Wert definiert ist. Er benutzt den Wert nicht. Also bleibt das `Failure` weich. Raku wirft es nie als echte Ausnahme.

{% include nav.html %}
