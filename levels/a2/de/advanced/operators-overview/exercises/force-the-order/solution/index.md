---
title: 'Solution: Reihenfolge erzwingen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say 2 ** (3 + 1);
```

🦋 Den Quellcode finden Sie in der Datei [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Ausgabe

```
16
```

## Kommentare

1. Ohne die Klammern ist `**` stärker als `+`. Dann bekommen Sie `(2 ** 3) + 1 = 9`.

1. Die Klammern geben der Addition einen höheren Vorrang. Also rechnet Raku zuerst `3 + 1`. Der Ausdruck wird zu `2 ** 4`, und das ist `16`. Mit Klammern können Sie den normalen Vorrang immer ändern.

{% include nav.html %}
