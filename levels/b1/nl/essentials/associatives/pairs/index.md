---
title: Paren
---

{% include menu.html %}

Een paar is een datastructuur die een naam en een waarde bij elkaar houdt. Samen vormen ze één object, dat je in een scalaire variabele kunt opslaan. Zo maak je een paar:

```raku
my $pair = name => 'Anna';
```

Het type van de variabele `$pair` is `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Je kunt de naam en de waarde apart krijgen met de methoden `key` en `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Een belangrijke eigenschap van paren is dat ze onveranderlijk zijn. Dat betekent dat je een bestaand paar geen nieuwe waarde of nieuwe naam kunt geven. Maar je kunt natuurlijk wel een heel nieuw paar aan dezelfde variabele toewijzen:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subscriptie

Er is nog een andere manier om de waarde van een paar te lezen. Je kunt het subscripten met de naam van de sleutel tussen hoekige haken. Zo gaat dat:

```raku
say $pair<name>;
```

Let op dat je geen aanhalingstekens om de sleutel nodig hebt als er geen spaties in staan. Als er wel spaties in staan, zijn de regels iets strenger:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Let goed op: deze keer gebruiken we accolades.

{% include nav.html %}
