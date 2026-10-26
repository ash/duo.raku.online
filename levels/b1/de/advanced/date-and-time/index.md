---
title: Datum und Uhrzeit
---

{% include menu.html %}

Raku hat eingebaute Typen für Kalenderdaten und Uhrzeiten. Ein Kalenderdatum hat den Typ `Date`. Um eines zu erstellen, gibst du das Jahr, den Monat und den Tag an:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Wenn du ein Datum hast, kannst du seine Teile auslesen:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Die Methode `day-of-week` sagt dir den Wochentag eines Datums. Sie gibt eine Zahl von `1` für Montag bis `7` für Sonntag zurück:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

Der 27.06.2026 ist ein Samstag, also ist das Ergebnis `6`.

Die Methode `is-leap-year` prüft, ob das Jahr des Datums ein Schaltjahr ist:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Rufe `Date.today` auf, um das heutige Datum zu bekommen. Die Ausgabe zeigen wir hier nicht. Sie hängt vom Tag ab, an dem du das Programm ausführst.

{% include nav.html %}
