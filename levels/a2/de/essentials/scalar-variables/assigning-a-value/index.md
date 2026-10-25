---
title: Zuweisen eines Wertes
---

{% include menu.html %}

Der `=` Operator legt einen neuen Wert in einen skalaren Container.

```raku
my $name;
$name = 'Anna';
```

Jetzt können Sie die Variable verwenden. Zum Beispiel können Sie sie ausgeben:

```raku
say $name;
```

## Zwei oder mehr Variablen auf einmal

Sie können mehreren Variablen auf einmal Werte zuweisen. Zum Beispiel weist hier eine Anweisung zwei Skalaren Werte zu:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Sie müssen die Klammern auf der linken Seite schreiben. Sie können sie nicht weglassen. Auf der rechten Seite können Sie sie auch hinzufügen. Dann sehen beide Seiten gleich aus:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
