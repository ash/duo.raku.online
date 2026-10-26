---
title: Vergleiche und Pläne
---

{% include menu.html %}

Das `Test`-Modul hat mehr als `ok` und `is`. Es hat Vergleiche für verschiedene Arten von Werten. Das hier sind die nützlichsten:

* `is` — prüft, ob zwei Werte gleich sind (als Strings oder Zahlen)
* `is-deeply` — prüft, ob zwei Datenstrukturen genau gleich sind, auch ihre Typen
* `like` — prüft, ob ein String zu einer Regex passt
* `isnt` — ist erfolgreich, wenn zwei Werte **nicht** gleich sind

Benutze `is-deeply` für Arrays, Hashes und Daten in anderen Daten. Es vergleicht die Struktur und den Typ genau:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Dies gibt aus:

```
ok 1 - reversed
1..1
```

`is` macht aus den Werten Strings. Dann vergleicht es sie, aber nicht sehr streng. `is-deeply` ist anders. Damit müssen die Strukturen wirklich übereinstimmen. Beachte: `done-testing` setzt den Plan `1..1` ans Ende, nach der Prüfung.

`done-testing` kann die Tests für dich zählen. Aber du kannst die Anzahl auch am Anfang angeben, mit `plan`. Das hilft bei einem Problem. Manchmal hört eine Testdatei zu früh auf. Dann überspringt sie einige Prüfungen ohne eine Meldung:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Jetzt steht der Plan **zuerst**. Er kommt vor den Ergebnissen:

```
1..2
ok 1 - first
ok 2 - second
```

Hier siehst du den Unterschied zwischen `plan` und `done-testing`. `plan` gibt die Anzahl `1..2` oben aus, bevor eine Prüfung läuft. `done-testing` gibt sie ganz am Ende aus. In jedem Fall erwartet der Lauf mit `plan 2` genau zwei Tests. Wenn weniger oder mehr Tests laufen, schlägt die ganze Gruppe von Tests fehl. Benutze `plan`, wenn die Anzahl der Tests fest ist und du sie kennst. Benutze `done-testing`, wenn es einfacher ist, das Testmodul zählen zu lassen.

{% include nav.html %}
