---
title: Bindung mit `:=`
---

{% include menu.html %}

Bis jetzt hat jede neue Variable einen neuen Container erstellt. Die Zuweisung mit `=` hat einen Wert _in_ diesen Container gelegt. Binding ist anders. Du schreibst es mit `:=`. Binding erstellt keinen neuen Container. Es gibt einem _vorhandenen_ Container einen Namen.

Nach dem Binding teilen sich die beiden Namen einen Container. Ändere den Wert über einen Namen. Der andere Name sieht die Änderung auch:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Hier kopiert `$y := $x` nicht den Wert `10`. Es macht `$y` zu einem zweiten Namen für den Container von `$x`. Es ist derselbe Container. Später bekommt `$x` den Wert `20`. Dann ist `$y` auch `20`.

Vergleiche das mit einer normalen Zuweisung. Sie kopiert den Wert in einen anderen Container:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Binding funktioniert auch mit Arrays. Hier wird `@alias` ein zweiter Name für `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Noch ein Detail. Du kannst einen Namen direkt an einen Literalwert binden. Das ist ein Wert, den du direkt in den Code schreibst. Dann steht kein Container hinter dem Namen. Also ist der Name schreibgeschützt. Du kannst ihm nichts zuweisen:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
