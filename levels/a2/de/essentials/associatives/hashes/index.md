---
title: Hashes
---

{% include menu.html %}

Ein _Hash_ ist noch ein assoziativer Datentyp in Raku. Er ist ein aggregierter Datentyp. Er enthält viele Elemente. Jedes Element hat einen Namen und einen Wert. Hash-Variablen haben ein neues Sigil: `%`.

```raku
my %capitals;
```

Jetzt können Sie den Hash verwenden. Sie können ihm einige Startwerte zuweisen.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Sie können auch beides auf einmal machen. Das geht auch mit anderen Datentypen:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Die Elemente bekommen

Um ein Element zu bekommen, indizieren Sie den Hash. Das geht genauso wie bei [Paaren](../pairs). Setzen Sie einen String in spitze Klammern oder in geschweifte Klammern:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Hashes sind veränderbar. Das heißt, Sie können sie ändern. Sie können die Werte ändern. Sie können auch neue Werte hinzufügen:

```raku
%capitals<Germany> = 'Berlin';
```

## Schlüssel und Werte

Raku hat zwei eingebaute Methoden für Hashes, `keys` und `values`. Die Methode `keys` gibt eine Liste der Schlüssel zurück. Die Methode `values` gibt eine Liste der Werte zurück:

```raku
say %capitals.keys;
say %capitals.values;
```

Das Programm kann zum Beispiel das hier ausgeben:

    (Germany Italy France)
    (Berlin Rome Paris)

Beachten Sie: Die Elemente eines Hashes haben keine Reihenfolge. Aber beide Methoden nehmen die gleiche Reihenfolge.

{% include nav.html %}
