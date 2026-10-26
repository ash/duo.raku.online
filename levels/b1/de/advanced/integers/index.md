---
title: Ganzzahlen
---

{% include menu.html %}

Du hast ganze Zahlen seit dem Anfang des Kurses benutzt. Dieser Abschnitt sieht sich einige ihrer Eigenschaften an, die man leicht übersieht.

Die wichtigste ist, dass ganze Zahlen in Raku _beliebige Genauigkeit_ haben. Sie haben keine feste Anzahl von Bytes. Sie laufen nie ohne Warnung über und liefern dann ein falsches Ergebnis. Wenn genug Speicher da ist, kann eine ganze Zahl so groß werden, wie du sie brauchst:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Das ist der genaue Wert, kein gerundeter. Das Gleiche gilt, wenn du große Zahlen multiplizierst. Zum Beispiel berechnet Raku die Fakultät von 50 genau:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Du kannst die Ziffern langer Zahlen mit Unterstrichen gruppieren. So sind sie in deinem Code leichter zu lesen. Der Compiler ignoriert die Unterstriche:

```raku
say 1_000_000; # 1000000
```

Die nächsten Themen zeigen, wie man ganze Zahlen in anderen Zahlensystemen schreibt. Sie stellen auch einige nützliche Methoden für ganze Zahlen vor.

{% include nav.html %}
