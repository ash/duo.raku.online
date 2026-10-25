---
title: Bereiche
---

{% include menu.html %}

In Raku erzeugen Bereiche Listen von Elementen, die aufeinander folgen.

Im einfachsten Fall ist ein Bereich eine Liste von ganzen Zahlen, die jeweils um eins steigen. Um einen Bereich zu erstellen, verwenden Sie den `..`-Operator und zwei Werte. Diese Werte legen den kleinsten und den größten Wert des Bereichs fest:

```raku
1 .. 5
```

Die Leerzeichen um den Operator sind optional. Sie können denselben Bereich also so schreiben:

```raku
1..5
```

Ein Bereich ist ein Weg, Listen zu erzeugen, aber er ist trotzdem ein einzelnes Objekt. Deshalb können Sie ihn in einer skalaren Variablen speichern:

```raku
my $r = 1 .. 5;
```

## Nicht nur Zahlen

Bereiche können auch andere Datentypen verwenden, wenn Raku weiß, wie man ihre Werte erhöht. Zum Beispiel:

```raku
my $letters = 'a' .. 'z';
```

In Raku sind Bereiche Objekte mit einem eigenen Datentyp. Der Typ der Variablen `$r` ist `Range`.

{% include nav.html %}
