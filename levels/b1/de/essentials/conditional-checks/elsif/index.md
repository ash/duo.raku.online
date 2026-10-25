---
title: Verwendung von `elsif`
---

{% include menu.html %}

Bisher haben wir `if` und `else` gelernt. Aber was ist, wenn Sie eine Kette von Tests bauen möchten? Raku hat mindestens zwei Wege dafür. Eigentlich gibt es sogar noch mehr.

Ein Weg ist, eine Kette von `if`-, `elsif`- und `else`-Blöcken zu benutzen. Beachten Sie, wie man `elsif` schreibt. Es ist nicht `elseif`, und es ist nicht `else if`.

```raku
my $x = prompt 'Geben Sie die Zahl ein: ';
if $x > 100 {
    say "$x ist größer als 100.";
}
elsif $x > 50 {
    say "$x ist größer als 50.";
}
elsif $x > 25 {
    say "$x ist größer als 25.";
}
else {
    say "$x ist 25 oder kleiner.";
}
```

Dieses Programm hat drei Zweige und drei Tests nacheinander. Sobald eine der Bedingungen `True` ist, läuft der passende Codeblock. Wenn keine der Prüfungen `True` ist, läuft der `else`-Block.

Hier sind ein paar Testläufe des Programms. Jeder Block läuft in einem davon:

```console
$ raku t.raku
Geben Sie die Zahl ein: 120
120 ist größer als 100.

$ raku t.raku
Geben Sie die Zahl ein: 75      
75 ist größer als 50.

$ raku t.raku
Geben Sie die Zahl ein: 30
30 ist größer als 25.

$ raku t.raku
Geben Sie die Zahl ein: 10
10 ist 25 oder kleiner.
```

Ein anderer Weg ist das Paar [`given` und `when`](/de/advanced/given-when), das wir später lernen werden.

{% include nav.html %}
