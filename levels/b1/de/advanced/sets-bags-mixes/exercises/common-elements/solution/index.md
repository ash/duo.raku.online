---
title: 'Solution: Gemeinsame Elemente'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Durchschnitt `$a ∩ $b` ist selbst ein Set, hier `{banana, cherry}`. Also hat er `2` Elemente. Wenn dir ASCII lieber ist, schreib `(&)` statt `∩`.

1. Der Durchschnitt ist ein Set, also kann `∈` dir sagen, ob ein Wert darin ist. `apple` ist nur im ersten Set, also ist es nicht im Durchschnitt. Der Test gibt `False` zurück.

{% include nav.html %}
