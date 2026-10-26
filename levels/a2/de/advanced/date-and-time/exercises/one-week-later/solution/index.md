---
title: 'Solution: Eine Woche später'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Du findest den Quellcode in der Datei [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Ausgabe

```
2027-03-07
7
```

## Kommentare

1. `later(:days(7))` schiebt das Datum sieben Tage nach vorne. Das ist eine Woche. Wir können auch `+ 7` schreiben. Aber mit dem benannten Argument siehst du die Einheit.

1. Der Februar 2027 hat 28 Tage. Also liegt der Tag eine Woche nach dem 28. im März. Raku geht von selbst in den März. Das Ergebnis ist `2027-03-07`.

1. Wir rufen `day-of-week` für das neue Datum auf. Es gibt `7` zurück. Mit dieser Zahl kannst du das Ergebnis leicht prüfen. Genau eine Woche später ist der Wochentag der *gleiche*. Und `2027-02-28` ist auch ein Sonntag (`7`). Also erwartest du hier die Antwort `7`.

{% include nav.html %}
