---
title: Vergleiche und Pläne
---

{% include menu.html %}

Neben `ok` und `is` hat das `Test`-Modul Vergleiche für verschiedene Arten von Werten. Hier sind die nützlichsten:

* `is` — prüft, ob zwei Werte gleich sind (als Strings oder Zahlen)
* `is-deeply` — prüft, ob zwei Datenstrukturen genau gleich sind, einschließlich ihrer Typen
* `like` — prüft, ob ein String zu einer Regex passt
* `isnt` — wird bestanden, wenn zwei Werte **nicht** gleich sind

`is-deeply` ist die richtige Wahl für Arrays, Hashes und verschachtelte Daten. Es vergleicht sowohl die Struktur als auch den Typ genau:

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

`is` würde die Werte in Strings umwandeln und sie locker vergleichen. Aber `is-deeply` verlangt, dass die Strukturen wirklich übereinstimmen. Beachte, dass `done-testing` den Plan `1..1` ans Ende setzt, nach der Prüfung.

Du musst die Tests nicht von `done-testing` zählen lassen. Stattdessen kannst du die Anzahl mit `plan` am Anfang angeben. Das schützt dich vor einer Testdatei, die zu früh aufhört und still einige Prüfungen überspringt:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Diesmal kommt der Plan **zuerst**, vor den Ergebnissen:

```
1..2
ok 1 - first
ok 2 - second
```

Das ist der sichtbare Unterschied zu `done-testing`. `plan` gibt die Anzahl `1..2` oben aus, bevor irgendeine Prüfung läuft. `done-testing` gibt sie dagegen ganz am Ende aus. In jedem Fall erwartet der Lauf mit `plan 2` genau zwei Tests. Wenn weniger oder mehr Tests laufen, wird die Testsuite als fehlgeschlagen gemeldet. Benutze `plan`, wenn die Anzahl der Tests fest und bekannt ist. Benutze `done-testing`, wenn es einfacher ist, das Test-Framework zählen zu lassen.

{% include nav.html %}
