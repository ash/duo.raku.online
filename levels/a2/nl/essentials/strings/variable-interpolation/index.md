---
title: Variabele interpolatie
---

{% include menu.html %}

In de vorige secties stonden sommige strings tussen enkele aanhalingstekens. Andere strings stonden tussen dubbele aanhalingstekens. Heb je dat gezien? Het verschil is heel belangrijk.

Heb je een enkel aanhalingsteken in een string nodig? De makkelijkste manier is natuurlijk om dubbele aanhalingstekens te gebruiken:

```raku
say "O'Henry";
```

Trouwens, een echte apostrof is nog steeds beter dan een enkel aanhalingsteken. De reden is dat [Raku goed is met Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Maar de echte kracht van dubbele aanhalingstekens is iets anders. Ze kunnen variabelen _interpoleren_. Straks zien we dat ze ook code kunnen uitvoeren! Kijk naar dit programma:

```raku
my $name = 'Karl';
say "Hallo, $name!";
```

Zoals je kunt raden, print het programma `Hallo, Karl!`. Raku haalt de naam `$name` weg, samen met de sigil `$`. Het zet de waarde van de variabele op die plek.

Raku gebruikt de waarde van de variabele op het moment van interpolatie. Je kunt de waarde van `$name` veranderen. Daarna interpoleer je hem opnieuw. Nu krijgt de string de nieuwe waarde. Laten we het testen:

```raku
my $name = 'Karl';
say "Hallo, $name!";

$name = 'Anna';
say "Hallo, $name!";
```

Deze keer maakt dezelfde string verschillende berichten:

    Hallo, Karl!
    Hallo, Anna!

{% include nav.html %}
