---
title: Listen
---

{% include menu.html %}

Listen sind ähnlich wie Arrays, aber sie sind unveränderlich. Das heißt, Sie können die Größe oder die Elemente einer Liste nicht ändern. Um eine Liste zu erstellen, verwenden Sie Klammern:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Indizierung von Listen

Um ein einzelnes Element einer Liste zu bekommen, verwenden Sie eckige Klammern mit dem Index:

```raku
say $odd[3]; # 7
```

Sie können jedoch keinen neuen Wert setzen:

```raku
$odd[3] = 8; # Nicht OK
```

Wenn Sie versuchen, das zu tun, bekommen Sie eine Ausnahme:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Zuweisung einer Liste zu einem Array

Was passiert, wenn Sie eine Liste in einer Variablen mit dem `@`-Sigil speichern?

```raku
my @data = (40, 42, 44);
```

In diesem Fall enthält die Variable `@data` ein Array, also können Sie seine Elemente ändern.

%%tipblock
## Variable vs Liste

Beachten Sie, dass Listen unveränderlich sind. Aber Sie können die Variable, die die Liste enthält, trotzdem wiederverwenden.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
