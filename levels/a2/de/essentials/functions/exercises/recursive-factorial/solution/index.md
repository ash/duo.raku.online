---
title: 'Solution: Rekursive Fakultät'
---

{% include menu.html %}

Die Fakultät ist eine sehr nützliche Übung. Sie können sie auf viele verschiedene Arten lösen. Diesmal verwenden wir Rekursion. Das bedeutet: Die Funktion ruft sich selbst auf.

## Code 1

Hier ist der Code der Lösung. Beachten Sie: Sie müssen eine Bedingung prüfen. Diese Bedingung stoppt die Rekursion. Ohne sie läuft die Rekursion endlos weiter.

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

In solchem Code ist die Postfix-Form von `if` oft besser. Hier steht `if` nach `return`. So kehrt die Funktion sofort zurück. Der Code wird sauberer. Er hat weniger Einrückung und weniger Satzzeichen.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Finden Sie das aktualisierte Programm in der Datei [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Beispiel

Führen Sie das Programm aus und prüfen Sie das Ergebnis. Hier ist eine lustige Tatsache. Sechs Wochen haben genau _10!_ Sekunden.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
