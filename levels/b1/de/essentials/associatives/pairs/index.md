---
title: Paare
---

{% include menu.html %}

Ein Paar ist eine Datenstruktur, die einen Namen und einen Wert zusammen speichert. Beide bilden ein einziges Objekt, das man in einer skalaren Variablen speichern kann. So erstellt man ein Paar:

```raku
my $pair = name => 'Anna';
```

Der Typ der Variablen `$pair` ist `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Man kann den Namen und den Wert mit den Methoden `key` und `value` getrennt bekommen:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Eine wichtige Eigenschaft von Paaren ist, dass sie unveränderlich sind. Das heißt, man kann einem vorhandenen Paar keinen neuen Wert und keinen neuen Namen geben. Aber natürlich kann man derselben Variablen ein ganz neues Paar zuweisen:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Indizierung

Es gibt noch einen anderen Weg, den Wert eines Paares zu lesen. Man kann es mit dem Namen seines Schlüssels in spitzen Klammern indizieren. So macht man das:

```raku
say $pair<name>;
```

Beachten Sie, dass Sie keine Anführungszeichen um den Schlüssel brauchen, wenn er keine Leerzeichen enthält. Wenn er Leerzeichen enthält, sind die Regeln etwas strenger:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Achtung: Diesmal verwenden wir geschweifte Klammern.

{% include nav.html %}
