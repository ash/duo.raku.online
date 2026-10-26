---
title: Typbeschränkungen
---

{% include menu.html %}

Im [Grundlagenteil](/de/essentials/typed-variables/type-constraints/) hast du Typen von Variablen mit Typeinschränkungen festgelegt. Wichtig ist: Es ist der _Container_, der diese Regel prüft. Er entscheidet, welche Werte er annehmen kann.

Diese Deklaration erstellt einen Skalar-Container, der nur Ganzzahlen speichern kann:

```raku
my Int $int;
```

Ein typisierter Container akzeptiert nur Werte, die zu seinem Typ passen. Deshalb sind alle diese Zuweisungen in Ordnung:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Raku ändert den Typ hier nicht automatisch. In Raku ist eine Zahl mit Dezimalpunkt ein `Rat`. Deshalb kannst du sie nicht zuweisen:

```raku
my Int $int;
$int = 123.45;
```

Du bekommst schon zur Kompilierzeit einen Fehler:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Um den Fehler zu vermeiden, wandle den Wert selbst um:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Lass dich nicht von den zwei Punkten in `123.45.Int` verwirren. Der erste ist der Dezimalpunkt. Der zweite ruft die Methode `Int` für den rationalen Wert auf, der ein `Rat` ist.

{% include nav.html %}
