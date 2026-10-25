---
title: '`while` und `until` als Anweisungsmodifikatoren'
---

{% include menu.html %}

Sie können `while` oder `until` auch hinter eine Anweisung setzen. Das nennen wir einen Anweisungsmodifikator. Sie kennen das schon [von `if` und `unless`](/de/essentials/conditional-checks/modifiers).

Hier ist ein Beispiel. Es berechnet den Rest, also das, was nach der Division übrig bleibt:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier ist `-=` ein Operator. Er macht zwei Dinge. Er zieht eine Zahl ab. Außerdem speichert er das Ergebnis in der Variablen. Also ist `$x -= 3` dasselbe wie `$x = $x - 3`.

Der `while`-Modifikator wiederholt die Anweisung `$x -= 3`. Er wiederholt sie, solange `$x > 2` `True` ist. Wenn `$x > 2` `False` ist, stoppt die Schleife.

Wenn die Bedingung am Anfang `False` ist, läuft die Anweisung nie.

Sie können dasselbe Programm mit `until` schreiben. Dann brauchen Sie die umgekehrte Bedingung:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
