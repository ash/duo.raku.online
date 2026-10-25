---
title: Zuweisen eines Wertes
---

{% include menu.html %}

Um einen neuen Wert in einen skalaren Container zu legen, verwenden Sie den `=` Operator.

```raku
my $name;
$name = 'Anna';
```

Jetzt können Sie die Variable verwenden, zum Beispiel, um sie auszugeben:

```raku
say $name;
```

## Mehrere Variablen auf einmal

Sie können mehreren Variablen gleichzeitig Werte zuweisen. Zum Beispiel weisen Sie so zwei Skalare in einer Anweisung zu:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Beachten Sie, dass Sie die Klammern auf der linken Seite nicht weglassen können. Aber Sie können sie auch auf der rechten Seite hinzufügen, damit beide Seiten gleich aussehen:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
