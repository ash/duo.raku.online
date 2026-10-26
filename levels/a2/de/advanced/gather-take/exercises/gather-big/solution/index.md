---
title: 'Solution: Sammeln bis voll'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Die Schleife bekommt einen Bereich mit hundert Zahlen. Sie braucht viel weniger. Aber das ist in Ordnung. Die Schleife stoppt von selbst. Wenn `$sum` größer als `10` wird, verlässt `last` die Schleife. Das Programm sieht sich die anderen Zahlen nie an.

1. Die Reihenfolge im Block ist wichtig. Zuerst addieren wir die Zahl zu `$sum`. Dann prüfen wir das Limit. Danach nehmen wir die Zahl. Eine Zahl macht die Summe größer als `10`. Hier ist diese Zahl `5`. Der Code nimmt sie nicht. Nach `4` ist die Summe genau `10`. Also ist die Liste `1, 2, 3, 4`.

1. Mit `for` kann `gather`/`take` früh aufhören. `grep` kann das nicht. `grep` sieht sich immer die ganze Liste an. Hier entscheiden wir, wann wir aufhören.

{% include nav.html %}
