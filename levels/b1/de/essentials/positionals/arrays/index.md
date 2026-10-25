---
title: Arrays
---

{% include menu.html %}

Arrays sind aggregierte Datentypen, das heißt, sie können mehr als einen Wert enthalten. Das unterscheidet sie von [skalaren Elementen](/de/essentials/scalar-variables). Array-Elemente können indiziert (oder _subskriptiert_) werden. Mit anderen Worten, jedes Element hat eine Position. Deshalb hat diese Art von Daten den allgemeinen Namen Positionale.

Für Array-Variablen gibt es ein anderes Sigil: `@`. Die Regeln für den Namen der Variablen sind die gleichen wie [für Skalare](/de/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Jetzt haben wir ein Array namens `@cities` erstellt. Sie können es mit einigen Werten füllen:

```raku
@cities = 'Paris', 'Rom', 'Berlin';
```

Sie können die Werte auch sofort setzen, wenn Sie das Array erstellen:

```raku
my @cities = 'Paris', 'Rom', 'Berlin';
```

## Indizierung

Um ein Element eines Arrays zu bekommen, setzen Sie ein Paar Klammern hinter seinen Namen:

```raku
say @cities[1];
```

Beachten Sie, dass das Sigil immer gleich bleibt. Die Elemente werden ab null gezählt, also ist in unserem Beispiel das Element `@cities[1]` gleich `'Rom'`.

Arrays sind veränderbar, das heißt, Sie können sie ändern. Um ein Element zu ändern, weisen Sie ihm einfach einen neuen Wert zu:

```raku
@cities[0] = 'Rom';
@cities[1] = 'Paris';
```

Jetzt gibt die Anweisung `say @cities[1]` den neuen Wert `'Paris'` aus.

## Größe

Die Länge eines Arrays ist die Anzahl seiner Elemente. Um die aktuelle Länge zu bekommen, verwenden Sie die Methode `elems`:

```raku
say @cities.elems; # 3
```

Wenn ein Array dort steht, wo eine Zahl erwartet wird, bekommen Sie seine Größe:

```raku
say +@cities; # 3
```

Hier braucht der [`+` Präfix-Operator](/de/essentials/coercion/prefixes) eine Zahl von seinem Argument. Deshalb ergibt `+@cities` den Wert `3`.

{% include nav.html %}
