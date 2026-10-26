---
title: 'Solution: Werte vergleichen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Du findest den Quellcode in der Datei [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Ausgabe

```
ok 1 - uppercase
1..1
```

## Kommentare

1. `is` vergleicht zwei Werte. `'a'.uc` ist der Wert, den du bekommst. `'A'` ist der Wert, den du erwartest.

1. Die Werte sind gleich, also ist der Test erfolgreich. Wenn der Test fehlschlägt, gibt `is` beide Werte aus.

{% include nav.html %}
