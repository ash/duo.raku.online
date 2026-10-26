---
title: Typbeschränkungen
---

{% include menu.html %}

Im [Grundlagenteil](/de/essentials/typed-variables/type-constraints/) hast du gelernt, einer Variable einen Typ zu geben. Das hast du mit einer Typeinschränkung gemacht. Hier ist ein wichtiger Punkt. Der _Container_ prüft diese Regel. Er entscheidet, welche Werte er annimmt.

Diese Deklaration erstellt einen Skalar-Container. Er kann nur Ganzzahlen speichern:

```raku
my Int $int;
```

Ein typisierter Container nimmt nur Werte an, die zu seinem Typ passen. Also funktionieren alle diese Zuweisungen:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

In diesem Fall ändert Raku den Typ nicht von selbst. In Raku ist eine Zahl mit Dezimalpunkt ein `Rat`-Wert. Also kannst du sie nicht zuweisen:

```raku
my Int $int;
$int = 123.45;
```

Du bekommst den Fehler zur Kompilierzeit. Das ist vor dem Start des Programms:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Wandle den Wert selbst um. Dann gibt es keinen Fehler:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

In `123.45.Int` stehen zwei Punkte. Lass dich davon nicht verwirren. Der erste Punkt ist der Dezimalpunkt. Der zweite Punkt ruft die Methode `Int` auf. Diese Methode arbeitet mit dem `Rat`-Wert, einer rationalen Zahl.

{% include nav.html %}
