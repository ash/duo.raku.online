---
title: '`for`-Schleifen'
---

{% include menu.html %}

Die `for`-Schleife ist ein mächtiges Werkzeug, um mehrere Elemente nacheinander zu durchlaufen. Nehmen wir zum Beispiel einen Bereich:

```raku
for 1..5 -> $n {
    say $n;
}
```

In diesem Programm nimmt die Variable `$n` bei jeder Iteration den nächsten Wert aus dem Bereich an. Beachten Sie, dass Sie die Variable nicht mit `my` deklarieren müssen. Der Codeblock wiederholt sich so oft, wie es Elemente in der Datenquelle gibt. Das Programm gibt also die Zahlen Zeile für Zeile aus:

```console
$ raku t.raku 
1
2
3
4
5
```

Das Programm durchläuft alle Werte, die der [Bereich](/de/essentials/ranges) `1..5` erzeugt. Das sind `1`, `2`, `3`, `4` und `5`.

## Mehr als einen Wert nehmen

Eine interessante Eigenschaft von Raku ist, dass man in einer einzigen Iteration mehr als ein Element nehmen kann. Das folgende Programm gibt jedes Mal, wenn die Schleife läuft, zwei Zahlen aus:

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
