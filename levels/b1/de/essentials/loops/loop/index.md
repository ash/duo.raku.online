---
title: Drei-Anweisungs-Schleife `loop`
---

{% include menu.html %}

Die `loop`-Anweisung in Raku hat viel mit den traditionellen Schleifen der Programmiersprache C und ihrer Verwandten gemeinsam. Sie nimmt drei Anweisungen: den Initialisierer, den Test und die Anweisung, die die Schleifenvariable ändert. Der Schleifenkörper läuft immer wieder, solange der Test `True` bleibt.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Der aktuelle Wert des Zählers ist $c.";
}
```

Hier ist `++` ein Postfix-Operator, der sein Argument um 1 erhöht. Im zweiten Teil des Kurses sehen wir uns weitere Operatoren an.

Das Programm führt den Schleifenkörper fünfmal aus.

```console
$ raku t.raku
Der aktuelle Wert des Zählers ist 0.
Der aktuelle Wert des Zählers ist 1.
Der aktuelle Wert des Zählers ist 2.
Der aktuelle Wert des Zählers ist 3.
Der aktuelle Wert des Zählers ist 4.
```

Einige oder sogar alle Anweisungen im Kopf von `loop` können weggelassen werden. Hier ist zum Beispiel dasselbe Programm:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Der aktuelle Wert des Zählers ist $c.";
    $c++;
}
```

## * * *

Die `loop`-Schleifen sind wahrscheinlich die am wenigsten genutzten Schleifen in Raku. Sie können sie zum Beispiel in Code finden, den ein Werkzeug automatisch von C nach Raku übersetzt hat. Aber Raku hat praktischere Schleifen wie `for`, die wir uns sehr bald ansehen werden.

{% include nav.html %}
