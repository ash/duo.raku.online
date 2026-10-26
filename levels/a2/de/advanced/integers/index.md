---
title: Ganzzahlen
---

{% include menu.html %}

Du hast schon seit dem Anfang des Kurses ganze Zahlen benutzt. Ganze Zahlen sind Zahlen ohne Komma. Dieser Abschnitt zeigt ein paar ihrer Eigenschaften. Diese Eigenschaften bemerkst du vielleicht nicht sofort.

Die wichtigste Eigenschaft ist die _beliebige Genauigkeit_. Eine ganze Zahl in Raku hat keine feste Anzahl von Bytes. Deshalb läuft sie nie über. Bei einem Überlauf wird eine Zahl zu groß. Dann wird sie ohne Warnung falsch. Mit genug Speicher kann eine ganze Zahl so groß sein, wie du sie brauchst:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Dieser Wert ist genau. Er ist nicht gerundet. Das gilt auch, wenn du große Zahlen multiplizierst. Zum Beispiel berechnet Raku die genaue Fakultät von 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Lange Zahlen im Code sind schwer zu lesen. Deshalb kannst du die Ziffern mit Unterstrichen in Gruppen teilen. Der Compiler überspringt die Unterstriche:

```raku
say 1_000_000; # 1000000
```

Die nächsten Themen zeigen, wie du ganze Zahlen in anderen Zahlensystemen schreibst. Es gibt nicht nur die Basis 10. Sie zeigen auch ein paar nützliche Methoden für ganze Zahlen.

{% include nav.html %}
