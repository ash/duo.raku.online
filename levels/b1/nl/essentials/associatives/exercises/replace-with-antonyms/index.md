---
title: Vervangen met antoniemen
---

{% include menu.html %}

## Probleem

Schrijf een programma dat alle woorden van de opdrachtregel vervangt door hun antoniemen. Antoniemen zijn woorden met de tegengestelde betekenis. Als een woord niet in het woordenboek staat, print het dan zonder het te veranderen.

Bewaar het woordenboek met antoniemen in een hash, direct in de code van het programma. Om het u makkelijker te maken, is hier een kant-en-klare lijst van ongeveer 200 paren: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). U kunt hem direct kopiëren en in uw programma plakken. Alle paren staan in beide richtingen in de lijst, bijvoorbeeld:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Houd het programma zo eenvoudig mogelijk en print de woorden één per regel.

## Voorbeeld

Voer het programma uit met een paar woorden als argumenten. Controleer of ten minste een paar ervan in het woordenboek staan.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
