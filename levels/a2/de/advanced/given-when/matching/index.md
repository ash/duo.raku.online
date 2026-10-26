---
title: Bereiche, Typen und Bedingungen abgleichen
---

{% include menu.html %}

Ein `when`-Block prüft nicht nur, ob zwei Werte gleich sind. Er macht einen _Smart Match_. Er vergleicht das Thema mit dem Wert, den du angibst. So kannst du auch mit Bereichen, Typen und Bedingungen vergleichen. Du bist nicht auf einzelne Werte beschränkt.

## Bereiche

Ein Bereich passt, wenn das Thema darin liegt. Also ist `given`/`when` gut, um Zahlen in Gruppen einzuteilen:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Der Wert `75` liegt im Bereich `70..79`. Also gibt das Programm aus:

```
C
```

## Typen

Ein Typ passt, wenn das Thema diesen Typ hat. So kannst du je nach Art des Wertes wählen, was passiert:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` enthält einen String. Also gibt das Programm aus:

```
a string
```

## Bedingungen

Du kannst auch direkt einen Vergleich schreiben. In `when` ist das Thema `$_`. Also passt eine Bedingung wie `$_ < 0`, wenn sie wahr ist:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Hier passt das erste `when`. Das Programm gibt aus:

```
negative
```

{% include nav.html %}
