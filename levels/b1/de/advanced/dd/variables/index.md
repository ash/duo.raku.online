---
title: Variablen dumpen
---

{% include menu.html %}

Rufe `dd` auf, um zu sehen, was in einer Variable ist. Du verwendest es genauso wie `say`:

```raku
my $var = 42;
dd $var;
```

`dd` gibt sowohl den Wert als auch den Namen der Variable aus:

```console
$var = 42
```

Wenn die Variable einen deklarierten Typ hat, zeigt `dd` auch den Typ. Vergleiche die Ausgabe dieses Programms mit der davor:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Das ist der Hauptunterschied zu `say`. Ein `dd`-Aufruf für einen Skalar zeigt dir den Namen der Variable. Er zeigt dir auch den Typ der Daten, wenn dieser bekannt ist. So kannst du mehrere `dd`-Aufrufe in ein Programm einfügen. Du siehst trotzdem, welche Ausgabe zu welcher Variable gehört.

Du kannst auch komplexere Datenstrukturen ausgeben, zum Beispiel Arrays oder Hashes. Dann gibt `dd` den Wert in einer codeähnlichen Form aus:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Beachte, dass du das verschachtelte Array deutlich siehst. Aber der Name der Variable wird nicht ausgegeben. Das Gleiche funktioniert für Hashes, und `dd` gibt ihre Schlüssel in sortierter Reihenfolge aus:

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
