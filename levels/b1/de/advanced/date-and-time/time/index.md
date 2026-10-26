---
title: Mit Uhrzeiten arbeiten
---

{% include menu.html %}

Wenn du das Datum und auch die Uhrzeit brauchst, verwende den Typ `DateTime`. Du erstellst ihn fast wie ein `Date`. Aber du gibst auch die Stunde, die Minute und die Sekunde an:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Die normale Textform folgt dem Standard ISO 8601. Sie enthält das Datum, den Buchstaben `T` und die Uhrzeit. Am Ende steht ein `Z` für die Zeitzone UTC.

Ein `DateTime` hat die Teile des Datums, die du schon kennst. Außerdem kannst du damit die Teile der Uhrzeit lesen:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Für den aktuellen Zeitpunkt rufe `DateTime.now` auf. Die Ausgabe zeigen wir hier nicht, genau wie bei `Date.today`. Sie ändert sich jedes Mal, wenn du das Programm ausführst.

{% include nav.html %}
