---
title: Variablen dumpen
---

{% include menu.html %}

Rufe `dd` auf, um den Wert einer Variable zu sehen. Das geht wie mit `say`:

```raku
my $var = 42;
dd $var;
```

`dd` zeigt den Wert. Es zeigt auch den Namen der Variable:

```console
$var = 42
```

Eine Variable kann einen deklarierten Typ haben. Dann zeigt `dd` auch den Typ. Vergleiche die Ausgabe dieses Programms mit der letzten:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Das ist der Hauptunterschied zu `say`. Rufe `dd` einmal für einen Skalar auf. Es zeigt dir den Namen der Variable. Es zeigt auch den Typ der Daten, wenn Raku ihn kennt. So kannst du mehrere `dd`-Aufrufe in ein Programm setzen. Du weißt trotzdem, welche Ausgabe von welcher Variable kommt.

Du kannst auch größere Datenstrukturen ausgeben, wie Arrays oder Hashes. Dann gibt `dd` den Wert in einer Form wie Code aus:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Beachte: Du siehst das innere Array deutlich. Aber `dd` gibt hier den Namen der Variable nicht aus. Mit Hashes funktioniert es genauso. `dd` gibt die Schlüssel eines Hashes sortiert aus:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
