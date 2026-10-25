---
title: Arrays
---

{% include menu.html %}

Arrays sind aggregierte Datentypen. Das heißt, ein Array kann mehr als einen Wert enthalten. Das unterscheidet Arrays von [skalaren Elementen](/de/essentials/scalar-variables). Sie können die Elemente eines Arrays indizieren oder _subskriptieren_. Mit anderen Worten, jedes Element hat eine Position. Darum nennen wir diese Art von Daten Positionale.

Array-Variablen haben ein anderes Sigil: `@`. Die Regeln für den Namen sind die gleichen wie [für Skalare](/de/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Jetzt haben wir ein Array. Es heißt `@cities`. Sie können einige Werte hineinschreiben:

```raku
@cities = 'Paris', 'Rom', 'Berlin';
```

Sie können das Array auch gleich mit Werten erstellen:

```raku
my @cities = 'Paris', 'Rom', 'Berlin';
```

## Indizierung

Um ein Element eines Arrays zu bekommen, verwenden Sie ein Paar Klammern. Setzen Sie sie hinter den Namen der Variablen:

```raku
say @cities[1];
```

Beachten Sie: Das Sigil ändert sich nicht. Es ist immer `@`. Raku zählt die Elemente ab null. In unserem Beispiel ist `@cities[1]` also `'Rom'`.

Arrays sind veränderbar. Das heißt, Sie können sie ändern. Um ein Element zu ändern, weisen Sie ihm einfach einen neuen Wert zu:

```raku
@cities[0] = 'Rom';
@cities[1] = 'Paris';
```

Danach gibt die Anweisung `say @cities[1]` den neuen Wert `'Paris'` aus.

## Größe

Was ist die Länge eines Arrays? Das ist die Anzahl seiner Elemente. Sie bekommen sie mit der Methode `elems`:

```raku
say @cities.elems; # 3
```

Manchmal steht ein Array dort, wo Raku eine Zahl braucht. Dann bekommen Sie die Größe des Arrays:

```raku
say +@cities; # 3
```

Hier braucht der [`+` Präfix-Operator](/de/essentials/coercion/prefixes) eine Zahl von seinem Argument. Darum ist das Ergebnis von `+@cities` gleich `3`.

{% include nav.html %}
