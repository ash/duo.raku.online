---
title: '`for`-Schleifen'
---

{% include menu.html %}

Die `for`-Schleife ist ein starkes Werkzeug. Sie geht durch viele Elemente, eines nach dem anderen. Nehmen wir zum Beispiel einen Bereich:

```raku
for 1..5 -> $n {
    say $n;
}
```

In diesem Programm bekommt die Variable `$n` jedes Mal den nächsten Wert aus dem Bereich. Sie müssen die Variable nicht mit `my` deklarieren. Der Codeblock läuft einmal für jedes Element des Bereichs. Also gibt das Programm die Zahlen aus, eine in jeder Zeile:

```console
$ raku t.raku 
1
2
3
4
5
```

Das Programm geht durch alle Werte des [Bereichs](/de/essentials/ranges) `1..5`. Das sind `1`, `2`, `3`, `4` und `5`.

## Mehr als ein Wert auf einmal

In Raku kann eine Schleife mehr als ein Element auf einmal nehmen. Dieses Programm gibt jedes Mal zwei Zahlen aus:

```raku
for 1..6 -> $n, $m {
    say "$n und $m";
}
```

Hier ist die Ausgabe des Programms:

```console
$ raku t.raku
1 und 2
3 und 4
5 und 6
```

{% include nav.html %}
