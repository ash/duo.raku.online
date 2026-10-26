---
title: Bereiche, Typen und Bedingungen abgleichen
---

{% include menu.html %}

Ein `when`-Block prüft nicht nur, ob zwei Werte gleich sind. Er macht einen _Smart Match_ zwischen dem Thema und dem Wert, den du ihm gibst. So kannst du gegen Bereiche, Typen und Bedingungen matchen, nicht nur gegen einzelne Werte.

## Bereiche

Ein Bereich passt, wenn das Thema darin liegt. Das macht `given`/`when` zu einer natürlichen Wahl, um Zahlen in Gruppen einzuteilen:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Der Wert `75` liegt im Bereich `70..79`, also gibt das Programm aus:

```
C
```

## Typen

Ein Typ passt, wenn das Thema von diesem Typ ist. So kann das Programm je nach Art seines Wertes einen Zweig wählen:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` enthält einen String, also gibt das Programm aus:

```
a string
```

## Bedingungen

Du kannst auch direkt einen Vergleich schreiben. Innerhalb von `when` kannst du das Thema als `$_` verwenden. Also passt eine Bedingung wie `$_ < 0`, wenn sie wahr ist:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Hier passt das erste `when`, und das Programm gibt aus:

```
negative
```

{% include nav.html %}
