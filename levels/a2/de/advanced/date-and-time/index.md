---
title: Datum und Uhrzeit
---

{% include menu.html %}

Raku hat Typen für Datum und Uhrzeit. Sie sind Teil der Sprache. Ein Datum im Kalender hat den Typ `Date`. Für ein neues Datum gibst du das Jahr, den Monat und den Tag an:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Ein Datum hat Teile. Du kannst jeden Teil lesen:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Die Methode `day-of-week` gibt den Wochentag des Datums zurück. Die Tage haben Nummern. Montag ist `1`, und Sonntag ist `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

Der 27.06.2026 ist ein Samstag. Also ist das Ergebnis `6`.

Ein Schaltjahr hat 366 Tage. Die Methode `is-leap-year` prüft, ob das Datum in einem Schaltjahr liegt:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Für das Datum von heute rufe `Date.today` auf. Wir zeigen die Ausgabe hier nicht. Sie hängt vom Tag ab, an dem du das Programm startest.

{% include nav.html %}
