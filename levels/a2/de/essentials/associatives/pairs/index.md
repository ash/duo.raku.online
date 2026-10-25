---
title: Paare
---

{% include menu.html %}

Ein Paar ist eine Datenstruktur. Es speichert einen Namen und einen Wert. Zusammen bilden sie ein ganzes Objekt. Man kann dieses Objekt in einer skalaren Variablen speichern. So erstellt man ein Paar:

```raku
my $pair = name => 'Anna';
```

Die Variable `$pair` hat den Typ `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Man kann den Namen und den Wert einzeln bekommen. Die Methode `key` gibt den Namen. Die Methode `value` gibt den Wert:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Paare haben eine wichtige Eigenschaft. Sie sind unveränderlich. Das heißt, man kann einem Paar keinen neuen Wert geben. Man kann ihm auch keinen neuen Namen geben. Natürlich kann man derselben Variablen ein ganz neues Paar zuweisen:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Indizierung

Es gibt noch einen Weg, den Wert eines Paares zu lesen. Man kann das Paar indizieren. Man setzt den Namen seines Schlüssels in spitze Klammern. So geht das:

```raku
say $pair<name>;
```

Beachten Sie: Ein Schlüssel ohne Leerzeichen braucht keine Anführungszeichen. Wenn der Schlüssel Leerzeichen hat, sind die Regeln etwas strenger:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Beachten Sie: Diesmal verwendet der Code geschweifte Klammern.

{% include nav.html %}
