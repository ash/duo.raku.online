---
title: 'Solution: Werte tauschen'
---

{% include menu.html %}

Dieses Programm verwendet Raku-Syntax aus dem Abschnitt über [skalare Variablen](/de/essentials/scalar-variables).

## Code

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Du kannst den Quellcode in der Datei [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku) finden.

## Ausgabe

Führe das Programm aus. Prüfe, ob es die Werte in der anderen Reihenfolge ausgibt.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Kommentare

Das Programm hat drei Schritte. Zuerst erstellt es die Variablen und gibt ihnen Werte. Dann tauscht es die Werte. Am Ende gibt es sie aus. Jeder Schritt verwendet beide Variablen in einer Anweisung. Sieh dir den interessantesten Teil an. Hier tauschen die Variablen ihre Werte:

```raku
($a, $b) = $b, $a;
```

Du brauchst Klammern auf der linken Seite. Du kannst sie auch auf der rechten Seite hinzufügen:

```raku
($a, $b) = ($b, $a);
```

Was passiert ohne die Klammern?

```raku
$a, $b = $b, $a;
```

Dann bekommst du eine Warnung. Sie sagt, dass `$a` auf der rechten Seite nicht verwendet wird:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Eigentlich ist diese Zeile dasselbe wie `$b = $b`. Diese Zuweisung macht nichts Nützliches. Das kannst du leicht sehen. Ändere die Werte auf der rechten Seite, zum Beispiel so:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Jetzt gibt das Programm noch mehr Warnungen aus. Aber du siehst auch noch etwas anderes. Nur `$b` bekommt einen neuen Wert:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
