---
title: 'Solution: Werte tauschen'
---

{% include menu.html %}

In diesem Programm verwenden wir Teile der Raku-Syntax aus dem Abschnitt über [skalare Variablen](/de/essentials/scalar-variables).

## Code

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Du kannst den Quellcode in der Datei [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku) finden.

## Ausgabe

Führe das Programm aus und prüfe, ob es die Werte in einer anderen Reihenfolge ausgibt.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Kommentare

Dieses Programm hat drei Schritte. Es erstellt die Variablen und weist ihnen Werte zu, tauscht die Werte und gibt sie aus. Jeder Schritt verwendet beide Variablen in derselben Anweisung. Am interessantesten ist, wie die Variablen ihre Werte austauschen:

```raku
($a, $b) = $b, $a;
```

Die Klammern auf der linken Seite sind nötig. Aber du kannst sie auch auf der rechten Seite hinzufügen:

```raku
($a, $b) = ($b, $a);
```

Was passiert, wenn du die Klammern weglässt?

```raku
$a, $b = $b, $a;
```

In diesem Fall warnt Raku dich, dass `$a` auf der rechten Seite nicht verwendet wird:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Tatsächlich macht diese Zeile dasselbe wie die nutzlose Zuweisung `$b = $b`. Das kannst du leicht sehen, wenn du die Werte auf der rechten Seite änderst, zum Beispiel:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Diesmal gibt es noch mehr Warnungen. Aber du kannst auch sehen, dass nur `$b` seinen Wert geändert hat:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
