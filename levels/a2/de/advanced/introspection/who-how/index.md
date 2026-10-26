---
title: '`WHO` und `HOW`'
---

{% include menu.html %}

Zwei weitere Werkzeuge für Introspektion sind `HOW` und `WHO`. Sie machen die Reihe komplett.

## `HOW`

Hinter jedem Wert in Raku steht ein _Metaobjekt_. Ein Metaobjekt ist ein Objekt. Es weiß, wie der Typ des Wertes funktioniert. `HOW` ist kurz für _Higher Order Workings_. Es gibt das Metaobjekt zurück:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Du verwendest das Metaobjekt schon. Vielleicht hast du das nicht bemerkt. Das `.^` in `.^name` ist ein Methodenaufruf. Dieser Aufruf geht über `HOW`. Diese beiden Zeilen tun dasselbe:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Also ist `$x.^name` nur eine kurze Schreibweise für `$x.HOW.name($x)`. Beachte: Das Objekt kommt noch einmal als Argument hinein. Warum? Alle Werte eines Typs *teilen* sich ein Metaobjekt. Die Methoden des Metaobjekts sind Meta-Methoden. Eine Meta-Methode muss wissen, nach welchem Objekt du fragst. Die Form `.^` übergibt das Objekt für dich. Bei `name` verwendet Raku dieses Argument nicht. Aber der richtige, allgemeine Weg ist, das Argument zu übergeben. Manche Meta-Methoden verwenden es wirklich.

Das gilt auch für andere Meta-Methoden. Ein Beispiel ist `.^methods`. Es liefert eine Liste von Methoden. Diese Methoden kannst du auf dem Wert aufrufen.

## `WHO`

`WHO` gibt das _Paket_ eines Namens zurück. Das ist eine Tabelle mit den Namen, oder Symbolen, in diesem Namensraum:

```raku
say Int.WHO.^name; # Stash
```

Ein `Stash` ist ein Hash für eine Tabelle von Symbolen. Er ist bei Modulen nützlich. Mit ihm kannst du die Namen eines Moduls nachschlagen. Wir kommen im [Abschnitt über Module](/de/advanced/module-introspection) darauf zurück. Merk dir für den Moment nur, dass `WHO` existiert. Merk dir auch, was es dir liefert.

{% include nav.html %}
