---
title: '`WHO` und `HOW`'
---

{% include menu.html %}

Die letzten zwei Introspektionswerkzeuge der Reihe sind `HOW` und `WHO`.

## `HOW`

Hinter jedem Wert in Raku gibt es ein _Metaobjekt_. Das ist ein Objekt, das weiß, wie der Typ des Wertes funktioniert. `HOW`, das kurz für _Higher Order Workings_ ist, gibt dieses Metaobjekt zurück:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Tatsächlich hast du das Metaobjekt die ganze Zeit verwendet, vielleicht ohne es zu bemerken. Das `.^` in `.^name` ist ein Methodenaufruf, der über `HOW` geht. Diese beiden Zeilen tun dasselbe:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Also ist `$x.^name` nur eine kürzere Schreibweise für `$x.HOW.name($x)`. Beachte, dass das Objekt noch einmal als Argument übergeben wird. Das liegt daran, dass jeder Wert des Typs dasselbe Metaobjekt *teilt*. Also muss eine Meta-Methode erfahren, nach welchem Objekt du fragst. Die Form `.^` macht das automatisch für dich. Bei `name` wird das Argument tatsächlich ignoriert. Aber es zu übergeben ist die richtige, allgemeine Form, weil manche Meta-Methoden es wirklich verwenden.

Dasselbe gilt für andere Meta-Methoden, die du vielleicht siehst, wie `.^methods`. Es listet die Methoden auf, die du auf einem Wert aufrufen kannst.

## `WHO`

`WHO` gibt das _Paket_ zurück, zu dem ein Name gehört. Das ist die Tabelle der Symbole, die in diesem Namensraum definiert sind:

```raku
say Int.WHO.^name; # Stash
```

Ein `Stash` ist ein Hash, der eine Symboltabelle enthält. Er wird nützlich, wenn du mit Modulen arbeitest. Dann kannst du mit ihm die Namen nachschlagen, die ein Modul definiert. Wir kommen im [Abschnitt über Module](/de/advanced/module-introspection) darauf zurück. Für den Moment reicht es zu wissen, dass `WHO` existiert und was es zurückgibt.

{% include nav.html %}
