---
title: Drei-Anweisungs-Schleife `loop`
---

{% include menu.html %}

Die `loop`-Anweisung in Raku ist den traditionellen Schleifen in C und ähnlichen Sprachen sehr ähnlich. Sie nimmt drei Anweisungen. Die erste setzt einen Startwert, und die zweite ist der Test. Die dritte ändert die Schleifenvariable. Der Schleifenkörper läuft immer wieder, solange der Test `True` ist.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Der aktuelle Wert des Zählers ist $c.";
}
```

Hier ist `++` ein Postfix-Operator, das heißt, er steht hinter seinem Argument. Er addiert 1 zum Argument. Im zweiten Teil des Kurses gibt es weitere Operatoren.

Das Programm führt den Schleifenkörper fünfmal aus.

```console
$ raku t.raku
Der aktuelle Wert des Zählers ist 0.
Der aktuelle Wert des Zählers ist 1.
Der aktuelle Wert des Zählers ist 2.
Der aktuelle Wert des Zählers ist 3.
Der aktuelle Wert des Zählers ist 4.
```

Einige Anweisungen im Kopf von `loop`, oder sogar alle, sind optional. Hier ist zum Beispiel dasselbe Programm:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Der aktuelle Wert des Zählers ist $c.";
    $c++;
}
```

## * * *

Raku-Programmierer verwenden `loop` wahrscheinlich seltener als jede andere Schleife. Sie finden `loop` zum Beispiel in Code, den ein Werkzeug von C nach Raku übersetzt hat. Aber Raku hat praktischere Schleifen wie `for`. Wir sehen sie uns sehr bald an.

{% include nav.html %}
