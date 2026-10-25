---
title: Verwendung von `elsif`
---

{% include menu.html %}

Jetzt kennen Sie `if` und `else`. Aber was ist, wenn Sie viele Tests nacheinander brauchen? Raku hat dafür mindestens zwei Wege. Eigentlich hat es sogar noch mehr.

Ein Weg ist eine Kette von Blöcken: `if`, `elsif` und `else`. Sehen Sie sich an, wie wir `elsif` schreiben. Es ist nicht `elseif`. Es ist auch nicht `else if`.

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

Dieses Programm hat drei Zweige. Es hat drei Tests, einen nach dem anderen. Sobald eine Bedingung `True` ist, führt Raku ihren Codeblock aus. Wenn kein Test `True` ist, führt Raku den `else`-Block aus.

Hier sind ein paar Testläufe des Programms. Zusammen benutzen sie alle Blöcke:

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

Ein anderer Weg ist das Paar [`given` und `when`](/de/advanced/given-when). Wir lernen es später.

{% include nav.html %}
