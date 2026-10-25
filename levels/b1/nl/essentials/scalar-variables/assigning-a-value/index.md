---
title: Toekennen van een waarde
---

{% include menu.html %}

Om een nieuwe waarde in een scalaire container te zetten, gebruik je de `=` operator.

```raku
my $name;
$name = 'Anna';
```

Nu kun je de variabele gebruiken, bijvoorbeeld om hem af te drukken:

```raku
say $name;
```

## Meerdere variabelen tegelijk

Je kunt waarden aan meerdere variabelen tegelijk toewijzen. Zo wijs je bijvoorbeeld twee scalairen toe in één instructie:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Let op dat je de haakjes aan de linkerkant niet kunt weglaten. Maar je kunt ze ook aan de rechterkant toevoegen, zodat beide kanten gelijk zijn:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
