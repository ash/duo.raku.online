---
title: 'Solution: Eine Woche später'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `later(:days(7))` schiebt das Datum um sieben Tage nach vorne, also um eine Woche. Wir könnten auch `+ 7` schreiben, aber das benannte Argument zeigt die Einheit deutlich.

1. Der Februar 2027 hat nur 28 Tage. Eine Woche nach dem 28. geht Raku also von selbst in den März. Das Ergebnis ist `2027-03-07`.

1. Wenn du `day-of-week` auf dem neuen Datum aufrufst, bekommst du `7`. So kannst du das Ergebnis leicht prüfen. Genau eine Woche später muss der Wochentag der *gleiche* sein wie vorher. Und `2027-02-28` ist auch ein Sonntag (`7`), also ist `7` die Antwort, die du erwartest.

{% include nav.html %}
