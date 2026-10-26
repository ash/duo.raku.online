---
title: 'Solution: Gemeinsame Elemente'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Du findest den Quellcode in der Datei [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Ausgabe

```
2
False
```

## Kommentare

1. Der Durchschnitt `$a ∩ $b` ist auch ein Set. Hier ist das `{banana, cherry}`. Also hat er `2` Elemente. Wenn du ASCII willst, schreib `(&)` statt `∩`.

1. Der Durchschnitt ist ein Set. Also kann `∈` prüfen, ob ein Wert darin ist. `apple` ist nur im ersten Set. Also ist `apple` nicht im Durchschnitt. Der Test gibt `False` zurück.

{% include nav.html %}
