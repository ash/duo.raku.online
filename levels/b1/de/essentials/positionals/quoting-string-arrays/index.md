---
title: Zitieren von Zeichenketten-Arrays
---

{% include menu.html %}

Manche Arrays von Zeichenfolgen haben nur kurze Zeichenfolgen ohne Leerzeichen. Für solche Arrays bietet Raku eine schöne Syntax, um ihre Werte zu setzen.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Sie können entscheiden, ob Sie zusätzliche Leerzeichen um die spitzen Klammern setzen oder nicht. Der Compiler akzeptiert beide Optionen.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Beide Formen sind dasselbe wie diese einfache, direkte Version:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array vs Liste

Beachten Sie, dass in den Beispielen oben die Anführungszeichen `< . . . >` eine `List` erstellen, kein `Array`. Sie können das prüfen, indem Sie die Methode `WHAT` aufrufen:

```raku
say <a b c>.WHAT; # (List)
```

Wenn Sie sie jedoch einem Array zuweisen, bekommt das Array dieselben Elemente.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
