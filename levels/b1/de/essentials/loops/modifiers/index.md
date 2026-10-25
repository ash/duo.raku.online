---
title: '`while` und `until` als Anweisungsmodifikatoren'
---

{% include menu.html %}

Sowohl `while` als auch `until` können als Anweisungsmodifikatoren verwendet werden, [genauso](/de/essentials/conditional-checks/modifiers) wie `if` und `unless`.

Sehen Sie sich ein Beispiel an, das die Modulo-Division nachahmt, also das Berechnen des Rests:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier ist `-=` ein Operator, der Subtraktion und Zuweisung zusammen ausführt. In diesem Fall ist `$x -= 3` dasselbe wie `$x = $x - 3`.

Der `while`-Modifikator wiederholt die Anweisung `$x -= 3`, solange die Bedingung `$x > 2` `True` bleibt. Sobald die Bedingung `False` wird, stoppt die Schleife.

Beachten Sie, dass die Anweisung gar nicht läuft, wenn die Bedingung von Anfang an `False` ist.

Dasselbe Programm kann mit `until` geschrieben werden. Dazu müssen Sie die Bedingung umkehren:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
