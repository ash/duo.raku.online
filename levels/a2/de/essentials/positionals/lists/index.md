---
title: Listen
---

{% include menu.html %}

Listen sind wie Arrays, aber sie sind unveränderlich. Sie können die Größe einer Liste nicht ändern. Sie können auch ihre Elemente nicht ändern. Eine Liste erstellen Sie mit Klammern:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Listen indizieren

Um ein Element einer Liste zu bekommen, verwenden Sie eckige Klammern. Schreiben Sie den Index hinein:

```raku
say $odd[3]; # 7
```

Aber Sie können einem Element keinen neuen Wert geben:

```raku
$odd[3] = 8; # Nicht OK
```

Wenn Sie es versuchen, bekommen Sie eine Ausnahme:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Zuweisung einer Liste zu einem Array

Sie können eine Liste in einer Variablen mit dem `@`-Sigil speichern. Was passiert dann?

```raku
my @data = (40, 42, 44);
```

Dann enthält die Variable `@data` ein Array. Sie können seine Elemente ändern.

%%tipblock
## Variable oder Liste

Eine Liste ist unveränderlich. Aber Sie können ihre Variable trotzdem wieder verwenden. Sie können eine neue Liste darin speichern.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
