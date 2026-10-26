---
title: 'Solution: strict lockern'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `no strict` schaltet eine Regel aus. Die Regel sagt, dass Sie alle Variablen deklarieren müssen. Also können Sie `$a` und `$b` ohne `my` etwas zuweisen. Mit dem normalen `strict` geben diese Zeilen Fehler zur Kompilierzeit.

1. Nach der Zuweisung arbeiten die Variablen wie gewohnt. Also ist `$a + $b` gleich `30`. Diese Änderung der Regel ist lexikalisch. Sie gilt nur bis zum Ende des aktuellen Gültigkeitsbereichs. Das ist der Gültigkeitsbereich mit `no strict`.

1. Das ist nur eine Demonstration. In der Praxis empfehlen wir das nicht. `strict` ist aus gutem Grund standardmäßig eingeschaltet. Es findet Tippfehler in Variablennamen zur Kompilierzeit. Lassen Sie es in echtem Code eingeschaltet. Deklarieren Sie Ihre Variablen mit `my`.

{% include nav.html %}
