---
title: Toekennen van een waarde
---

{% include menu.html %}

De `=` operator zet een nieuwe waarde in een scalaire container.

```raku
my $name;
$name = 'Anna';
```

Nu kun je de variabele gebruiken. Je kunt hem bijvoorbeeld afdrukken:

```raku
say $name;
```

## Twee of meer variabelen tegelijk

Je kunt waarden aan meerdere variabelen tegelijk toewijzen. Hier wijst één instructie bijvoorbeeld waarden toe aan twee scalairen:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Aan de linkerkant moet je de haakjes schrijven. Je kunt ze niet weglaten. Aan de rechterkant kun je ze ook toevoegen. Dan zien beide kanten er hetzelfde uit:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
