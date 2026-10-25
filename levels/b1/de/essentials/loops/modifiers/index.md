---
title: '`while` und `until` als Anweisungsmodifikatoren'
---

{% include menu.html %}

Sie können `while` und `until` auch als Anweisungsmodifikatoren verwenden, also hinter einer Anweisung. Das funktioniert [genauso](/de/essentials/conditional-checks/modifiers) wie bei `if` und `unless`.

Hier ist ein Beispiel, das wie die Modulo-Division funktioniert, also den Rest berechnet:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier ist `-=` ein Operator, der in einem Schritt subtrahiert und zuweist. Also bedeutet `$x -= 3` dasselbe wie `$x = $x - 3`.

Der `while`-Modifikator wiederholt `$x -= 3`, solange die Bedingung `$x > 2` `True` ist. Wenn sie `False` wird, stoppt die Schleife.

Beachten Sie: Wenn die Bedingung von Anfang an `False` ist, läuft die Anweisung nie.

Dasselbe Programm kann auch `until` verwenden, aber dann muss die Bedingung umgekehrt werden:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
