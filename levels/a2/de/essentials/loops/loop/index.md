---
title: Drei-Anweisungs-Schleife `loop`
---

{% include menu.html %}

Raku hat eine `loop`-Anweisung. Sie funktioniert wie die Schleifen in C und ähnlichen Sprachen. Sie hat drei Anweisungen. Die erste gibt der Schleifenvariablen ihren Startwert. Die zweite ist ein Test. Die dritte ändert die Schleifenvariable. Die Schleife läuft, solange der Test `True` ist.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Der aktuelle Wert des Zählers ist $c.";
}
```

Hier ist `++` ein Operator. Sie schreiben ihn hinter eine Variable. Er addiert 1 zur Variablen. Im zweiten Teil des Kurses gibt es mehr Operatoren.

Der Körper der Schleife läuft fünfmal.

```console
$ raku t.raku
Der aktuelle Wert des Zählers ist 0.
Der aktuelle Wert des Zählers ist 1.
Der aktuelle Wert des Zählers ist 2.
Der aktuelle Wert des Zählers ist 3.
Der aktuelle Wert des Zählers ist 4.
```

Sie können einige der drei Anweisungen in `loop` weglassen. Sie können sogar alle weglassen. Hier ist zum Beispiel dasselbe Programm:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Der aktuelle Wert des Zählers ist $c.";
    $c++;
}
```

## * * *

In Raku benutzt man `loop` nicht sehr oft. Manchmal macht ein Werkzeug aus C-Code Raku-Code. In solchem Code können Sie `loop` sehen. Raku hat einfachere Schleifen, wie `for`. Wir sehen uns `for` sehr bald an.

{% include nav.html %}
