---
title: 'Solution: Zwei Prüfungen planen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `plan 2` gibt die Anzahl an, bevor ein Test läuft. Darum kommt die Zeile `1..2` zuerst. Vielleicht führt die Datei eine andere Anzahl von Prüfungen aus. Dann schlägt die ganze Gruppe von Tests fehl. `done-testing` kann dich nicht so schützen.

1. `is-deeply` prüft, ob die zwei Listen genau gleich sind, auch ihre Typen. Das Sortieren von `3, 1, 2` ergibt `1, 2, 3`. Das passt.

1. `is` prüft, ob zwei Werte gleich sind. Wenn nicht, zeigt es beide Werte. Hier ist `10 % 3` gleich `1`. Das ist der erwartete Wert. Also ist auch der zweite Test erfolgreich.

{% include nav.html %}
