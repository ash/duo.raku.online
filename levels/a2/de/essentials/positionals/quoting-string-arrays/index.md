---
title: Zitieren von Zeichenketten-Arrays
---

{% include menu.html %}

Manchmal sind die Elemente eines Arrays kurze Zeichenfolgen ohne Leerzeichen. Raku hat einen schönen Weg, so einem Array seine Werte zu geben.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Sie können zusätzliche Leerzeichen um die spitzen Klammern setzen. Oder Sie schreiben sie ohne Leerzeichen. Sie entscheiden. Der Compiler akzeptiert beide Wege.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Beide Wege ergeben dasselbe wie diese einfache Version:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array oder Liste

Beachten Sie etwas bei den Beispielen oben. Die Anführungszeichen `< . . . >` erstellen eine `List`. Sie erstellen kein `Array`. Das können Sie mit der Methode `WHAT` prüfen:

```raku
say <a b c>.WHAT; # (List)
```

Aber Sie können sie einem Array zuweisen. Dann bekommen Sie ein Array mit den Elementen der Liste.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
