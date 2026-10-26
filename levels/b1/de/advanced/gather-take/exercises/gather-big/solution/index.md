---
title: 'Solution: Sammeln bis voll'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Du findest den Quellcode in der Datei [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Ausgabe

```
[1 2 3 4]
```

## Kommentare

1. Die Schleife bekommt einen Bereich mit hundert Zahlen, viel mehr, als sie braucht. Das ist in Ordnung, weil die Schleife von selbst stoppt. Sobald `$sum` über `10` geht, verlässt `last` die Schleife. Die restlichen Zahlen werden nie angesehen.

1. Die Reihenfolge im Block ist wichtig. Wir addieren zuerst zu `$sum` und prüfen das Limit, bevor wir die Zahl nehmen. Deshalb wird die Zahl, die die Summe über `10` bringt (hier `5`), nicht gesammelt. Die Summe erreicht nach `4` genau `10`, also ist die Liste `1, 2, 3, 4`.

1. Mit `for` kann `gather`/`take` früh aufhören, aber `grep` kann das nicht. `grep` geht immer die ganze Liste durch, während wir hier selbst entscheiden, wann wir aufhören.

{% include nav.html %}
