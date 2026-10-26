---
title: 'Solution: Standardrabatt'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Du findest den Quellcode in der Datei [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Natürlich gibt es eine einfachere Lösung. Gib der Variable gleich beim Erstellen den Wert `0`:

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

1. Der Trait `is default(0)` gibt dem Container einen Ersatzwert. Der Container verwendet ihn, bis du etwas zuweist. Wenn du die Variable liest, bekommst du `0`. Ohne deklarierten Standardwert bekommst du eine Warnung über einen _uninitialisierten Wert_. Hier gibt es so eine Warnung nicht.

1. Nach der Zuweisung enthält der Container `15`. Der Standardwert ist dann nicht mehr wichtig.

{% include nav.html %}
