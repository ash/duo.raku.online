---
title: '`while` und `until` als Anweisungsmodifikatoren'
---

{% include menu.html %}

Sie können `while` und `until` auch nach einer Anweisung schreiben. Diese Form heißt Anweisungsmodifikator. Sie funktioniert [wie](/de/essentials/conditional-checks/modifiers) `if` und `unless` nach einer Anweisung.

Hier ist ein Beispiel. Es berechnet den Rest einer Division:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier ist `-=` ein Operator. Er subtrahiert und weist gleichzeitig zu. Also bedeutet `$x -= 3` dasselbe wie `$x = $x - 3`.

Der `while`-Modifikator wiederholt die Anweisung `$x -= 3`. Er wiederholt sie, solange die Bedingung `$x > 2` `True` ist. Wenn die Bedingung `False` wird, hört die Schleife auf.

Wenn die Bedingung am Anfang `False` ist, läuft die Anweisung gar nicht.

Sie können dasselbe Programm mit `until` schreiben. Dafür müssen Sie die umgekehrte Bedingung verwenden:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
