---
title: '`for`-Schleifen'
---

{% include menu.html %}

Die `for`-Schleife ist ein mächtiges Werkzeug. Sie geht durch viele Elemente, eines nach dem anderen. Nehmen wir zum Beispiel einen Bereich:

```raku
for 1..5 -> $n {
    say $n;
}
```

Jedes Mal, wenn die Schleife läuft, nimmt die Variable `$n` den nächsten Wert aus dem Bereich an. Beachten Sie, dass Sie die Variable nicht mit `my` deklarieren müssen. Der Codeblock läuft einmal für jedes Element der Datenquelle. Also gibt das Programm die Zahlen aus, eine pro Zeile:

```console
$ raku t.raku 
1
2
3
4
5
```

Das Programm geht durch alle Werte, die der [Bereich](/de/essentials/ranges) `1..5` liefert. Das sind `1`, `2`, `3`, `4` und `5`.

## Mehr als einen Wert nehmen

Hier ist eine interessante Eigenschaft von Raku. Eine Schleife kann mehr als ein Element auf einmal nehmen. Das nächste Programm gibt bei jedem Durchlauf der Schleife zwei Zahlen aus:

```raku
for 1..6 -> $n, $m {
    say "$n und $m";
}
```

Das ist die Ausgabe des Programms:

```console
$ raku t.raku
1 und 2
3 und 4
5 und 6
```

{% include nav.html %}
