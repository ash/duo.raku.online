---
title: 'Solution: Rekursive Fakultät'
---

{% include menu.html %}

Die Fakultät ist eine sehr nützliche Übung, weil es viele Wege gibt, sie zu lösen. Diesmal verwenden wir Rekursion, das heißt, die Funktion ruft sich selbst auf.

## Code 1

Hier ist der Code der Lösung. Beachten Sie, dass Sie eine Bedingung prüfen müssen, um die Rekursion zu stoppen. Sonst läuft sie endlos weiter.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Finden Sie das Programm in der Datei [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Code 2

In solchem Code ist die Postfix-Form von `if` oft besser. Mit ihr können Sie sofort aus der Funktion zurückkehren. Das macht den Code sauberer und entfernt viel Einrückung und viele Satzzeichen.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Finden Sie das aktualisierte Programm in der Datei [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Beispiel

Führen Sie das Programm aus und prüfen Sie das Ergebnis. Übrigens, wussten Sie, dass sechs Wochen genau _10!_ Sekunden haben?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
