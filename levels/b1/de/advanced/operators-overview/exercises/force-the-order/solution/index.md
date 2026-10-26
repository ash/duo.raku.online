---
title: 'Solution: Reihenfolge erzwingen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ohne die Klammern würde `**` stärker binden als `+`, und Sie würden `(2 ** 3) + 1 = 9` bekommen.

1. Die Klammern erhöhen den Vorrang der Addition, also wird `3 + 1` zuerst berechnet. Der Ausdruck wird zu `2 ** 4`, und das ist `16`. Mit Klammern können Sie den Standardvorrang immer ändern.

{% include nav.html %}
