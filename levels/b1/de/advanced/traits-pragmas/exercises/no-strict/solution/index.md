---
title: 'Solution: strict lockern'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Den Quellcode finden Sie in der Datei [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Ausgabe

```
30
```

## Kommentare

1. `no strict` schaltet die Regel aus, dass Variablen deklariert werden müssen. Also können Sie `$a` und `$b` ohne ein `my` etwas zuweisen. Mit dem standardmäßigen `strict` wäre jede dieser Zeilen ein Fehler zur Kompilierzeit.

1. Nachdem Sie ihnen Werte zugewiesen haben, verhalten sich die Variablen wie gewohnt, also ist `$a + $b` gleich `30`. Diese lockerere Regel ist lexikalisch. Sie gilt nur bis zum Ende des Gültigkeitsbereichs, in dem `no strict` steht.

1. Das ist nur eine Demonstration, und wir empfehlen das nicht für die Praxis. `strict` ist aus gutem Grund standardmäßig eingeschaltet. Es findet Tippfehler in Variablennamen zur Kompilierzeit. Lassen Sie es in echtem Code eingeschaltet und deklarieren Sie Ihre Variablen mit `my`.

{% include nav.html %}
