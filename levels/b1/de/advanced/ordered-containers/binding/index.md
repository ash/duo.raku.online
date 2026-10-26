---
title: Bindung mit `:=`
---

{% include menu.html %}

Bisher hat jede Variable, die du erstellt hast, einen neuen Container bekommen. Die Zuweisung mit `=` hat einen Wert _in_ diesen Container gelegt. Binding, geschrieben als `:=`, ist anders. Es lässt einen Namen auf einen _vorhandenen_ Container zeigen, statt einen neuen zu erstellen.

Nach dem Binding teilen sich die beiden Namen denselben Container. Deshalb ist eine Änderung über einen Namen auch über den anderen sichtbar:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Hier kopiert `$y := $x` nicht den Wert `10`. Stattdessen wird `$y` ein anderer Name für genau denselben Container wie `$x`. Wenn `$x` später auf `20` gesetzt wird, gibt auch `$y` den Wert `20` zurück.

Vergleiche das jetzt mit einer normalen Zuweisung. Sie kopiert den Wert in einen separaten Container:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Binding funktioniert auch mit Arrays. Dieser Code macht `@alias` zu einem anderen Namen für `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Noch ein Detail. Wenn du einen Namen direkt an einen Literalwert bindest, steht kein Container dahinter. Deshalb wird der Name schreibgeschützt:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
