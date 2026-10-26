---
title: 'Solution: Ein erster Test'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Du findest den Quellcode in der Datei [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Ausgabe

```
ok 1 - Raku has four letters
1..1
```

## Kommentare

1. Die Bedingung `'Raku'.chars == 4` ist wahr. Also ist `ok` erfolgreich.

1. `done-testing` gibt die Planzeile `1..1` aus. Sie sagt, dass ein Test gelaufen ist.

{% include nav.html %}
