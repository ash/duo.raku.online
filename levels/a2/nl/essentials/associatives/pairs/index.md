---
title: Paren
---

{% include menu.html %}

Een paar is een datastructuur. Het bewaart een naam en een waarde. Samen vormen ze één object. Je kunt dit object in een scalaire variabele bewaren. Zo maak je een paar:

```raku
my $pair = name => 'Anna';
```

De variabele `$pair` heeft het type `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Je kunt de naam en de waarde apart krijgen. De methode `key` geeft de naam. De methode `value` geeft de waarde:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Paren hebben een belangrijke eigenschap. Ze zijn onveranderlijk. Dat betekent dat je een paar geen nieuwe waarde kunt geven. Je kunt het ook geen nieuwe naam geven. Natuurlijk kun je wel een heel nieuw paar aan dezelfde variabele toewijzen:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subscriptie

Er is nog een manier om de waarde van een paar te lezen. Je kunt het paar subscripten. Zet de naam van de sleutel tussen hoekige haken. Zo doe je dat:

```raku
say $pair<name>;
```

Let op: een sleutel zonder spaties heeft geen aanhalingstekens nodig. Als de sleutel spaties heeft, zijn de regels iets strenger:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Let op: deze keer gebruikt de code accolades.

{% include nav.html %}
