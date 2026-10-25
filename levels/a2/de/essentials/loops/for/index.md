---
title: '`for`-Schleifen'
---

{% include menu.html %}

Die `for`-Schleife ist sehr nützlich. Sie geht durch viele Elemente, eines nach dem anderen. Nehmen Sie zum Beispiel einen Bereich:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` bekommt jedes Mal den nächsten Wert aus dem Bereich. Sie müssen `my` nicht vor `$n` schreiben. Der Block läuft einmal für jeden Wert im Bereich. Also gibt das Programm die Zahlen aus, eine in jeder Zeile:

```console
$ raku t.raku 
1
2
3
4
5
```

Das Programm geht durch alle Werte des [Bereichs](/de/essentials/ranges) `1..5`. Diese Werte sind `1`, `2`, `3`, `4` und `5`.

## Mehr als ein Wert auf einmal

In Raku kann eine Schleife jedes Mal zwei oder mehr Elemente nehmen. Dieses Programm gibt immer zwei Zahlen auf einmal aus:

```raku
for 1..6 -> $n, $m {
    say "$n und $m";
}
```

Das gibt das Programm aus:

```console
$ raku t.raku
1 und 2
3 und 4
5 und 6
```

{% include nav.html %}
