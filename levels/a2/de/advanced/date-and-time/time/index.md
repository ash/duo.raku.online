---
title: Mit Uhrzeiten arbeiten
---

{% include menu.html %}

Manchmal brauchst du das Datum und auch die Uhrzeit. Dann nimm den Typ `DateTime`. Du machst ihn fast wie ein `Date`. Aber du gibst auch die Stunde, die Minute und die Sekunde an:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Normalerweise folgt der Text dem Standard ISO 8601. Zuerst kommt das Datum. Dann kommen der Buchstabe `T` und die Uhrzeit. Am Ende steht der Buchstabe `Z`. Er steht für die Zeitzone UTC.

Du kennst schon die Teile eines Datums. Ein `DateTime` hat sie auch. Dazu kommen die Teile der Uhrzeit:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Für die Zeit genau jetzt rufe `DateTime.now` auf. Wir zeigen die Ausgabe hier nicht. Bei `Date.today` haben wir das auch so gemacht. Die Ausgabe ändert sich jedes Mal, wenn das Programm läuft.

{% include nav.html %}
