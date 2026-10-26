---
title: 'Solution: Standardrabatt'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

## Code

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Du findest den Quellcode in der Datei [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Natürlich wäre es einfacher, der Variable gleich den Wert `0` zu geben:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Ausgabe

```
0
15
```

## Kommentare

1. Der Trait `is default(0)` gibt dem Container einen Wert, den er verwendet, bis etwas zugewiesen wird. Wenn du die Variable liest, bekommst du `0`. Anders als ohne deklarierten Standardwert gibt es keine Warnung über einen _uninitialisierten Wert_.

1. Nach der Zuweisung enthält der Container `15`, und der Standardwert ist nicht mehr wichtig.

{% include nav.html %}
