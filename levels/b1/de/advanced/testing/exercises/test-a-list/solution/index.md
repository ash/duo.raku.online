---
title: 'Solution: Zwei Prüfungen planen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Du findest den Quellcode in der Datei [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Ausgabe

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Kommentare

1. `plan 2` gibt die Anzahl an, bevor irgendein Test läuft, darum kommt die Zeile `1..2` zuerst. Wenn die Datei dann eine andere Anzahl von Prüfungen ausführen würde, würde die Testsuite fehlschlagen. `done-testing` kann dir diesen Schutz nicht geben.

1. `is-deeply` prüft, ob die beiden Listen genau gleich sind, einschließlich ihrer Typen. Das Sortieren von `3, 1, 2` ergibt `1, 2, 3`, und das passt.

1. `is` prüft zwei Werte auf einfache Gleichheit. Wenn der Test fehlschlägt, zeigt es beide Werte. Hier ist `10 % 3` gleich `1`, und das ist der erwartete Wert. Also wird auch der zweite Test bestanden.

{% include nav.html %}
