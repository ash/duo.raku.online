---
title: Drei-Anweisungs-Schleife `loop`
---

{% include menu.html %}

Die `loop`-Anweisung in Raku ist wie die klassischen Schleifen in der Sprache C und ähnlichen Sprachen. Sie nimmt drei Anweisungen. Die erste setzt den Startwert. Die zweite ist der Test. Die dritte ändert die Schleifenvariable. Der Schleifenkörper läuft immer wieder, solange der Test `True` ist.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Der aktuelle Wert des Zählers ist $c.";
}
```

Hier ist `++` ein Operator hinter einer Variablen. Er addiert 1 zur Variablen. Im zweiten Teil des Kurses lernen Sie mehr Operatoren kennen.

Das Programm führt den Körper der Schleife fünfmal aus.

```console
$ raku t.raku
Der aktuelle Wert des Zählers ist 0.
Der aktuelle Wert des Zählers ist 1.
Der aktuelle Wert des Zählers ist 2.
Der aktuelle Wert des Zählers ist 3.
Der aktuelle Wert des Zählers ist 4.
```

Sie können einige oder sogar alle Anweisungen im Kopf von `loop` weglassen. Hier ist zum Beispiel dasselbe Programm:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Der aktuelle Wert des Zählers ist $c.";
    $c++;
}
```

## * * *

Man benutzt `loop` in Raku nicht sehr oft. Sie sehen es zum Beispiel in Programmen, die ein Werkzeug von C nach Raku übersetzt hat. Raku hat einfachere Schleifen, wie `for`. Wir sehen uns `for` sehr bald an.

{% include nav.html %}
