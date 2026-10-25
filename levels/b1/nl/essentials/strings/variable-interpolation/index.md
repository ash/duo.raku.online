---
title: Variabele interpolatie
---

{% include menu.html %}

In de vorige secties stonden sommige strings tussen enkele aanhalingstekens en andere tussen dubbele. Heb je dat al opgemerkt? Dit verschil is heel belangrijk.

Natuurlijk kun je met dubbele aanhalingstekens makkelijk een enkel aanhalingsteken in een string zetten:

```raku
say "O'Henry";
```

Overigens is een echte apostrof nog steeds beter dan een enkel aanhalingsteken. Tenslotte is [Raku goed met Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Maar de echte kracht van dubbele aanhalingstekens is dat ze variabelen kunnen _interpoleren_. Zoals we straks zien, kunnen ze zelfs code uitvoeren! Bekijk dit programma eens:

```raku
my $name = 'Karl';
say "Hallo, $name!";
```

Zoals je waarschijnlijk verwacht, print het programma `Hallo, Karl!`. De waarde van de variabele heeft de naam `$name` vervangen, samen met de sigil `$`.

De geïnterpoleerde waarde is de waarde die de variabele heeft op het moment van interpolatie. Dus als je `$name` verandert en opnieuw interpoleert, wordt de nieuwe waarde gebruikt. Laten we het testen:

```raku
my $name = 'Karl';
say "Hallo, $name!";

$name = 'Anna';
say "Hallo, $name!";
```

Deze keer geeft dezelfde string verschillende berichten:

    Hallo, Karl!
    Hallo, Anna!

{% include nav.html %}
