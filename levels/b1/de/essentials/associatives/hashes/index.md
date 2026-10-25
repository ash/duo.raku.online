---
title: Hashes
---

{% include menu.html %}

Ein _Hash_ ist ein weiterer assoziativer Datentyp in Raku. Er ist ein aggregierter Typ, der den Namen jedes Elements mit seinem Wert verbindet. Hash-Variablen verwenden ein neues Sigil: `%`.

```raku
my %capitals;
```

Jetzt können Sie den Hash verwenden und ihm einige Startwerte geben.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Wie bei anderen Datentypen können Sie beides in einem Schritt machen:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Zugriff auf die Elemente

Das Indizieren funktioniert ähnlich wie bei den [Paaren](../pairs), die wir schon gesehen haben. Setzen Sie einen String in spitze oder in geschweifte Klammern:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Hashes sind veränderbar, darum können Sie vorhandene Werte ändern und neue hinzufügen:

```raku
%capitals<Germany> = 'Berlin';
```

## Schlüssel und Werte

Ein Hash hat zwei eingebaute Methoden, `keys` und `values`. Sie geben eine Liste seiner Schlüssel und eine Liste seiner Werte zurück:

```raku
say %capitals.keys;
say %capitals.values;
```

Hier ist ein Beispiel dafür, was dieses Programm ausgibt:

    (Germany Italy France)
    (Berlin Rome Paris)

Beachten Sie, dass die Elemente eines Hashes keine feste Reihenfolge haben. Aber die Methoden oben geben die Schlüssel und die Werte in der gleichen Reihenfolge zurück.

{% include nav.html %}
