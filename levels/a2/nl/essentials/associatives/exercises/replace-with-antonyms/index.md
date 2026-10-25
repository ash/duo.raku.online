---
title: Vervangen met antoniemen
---

{% include menu.html %}

## Probleem

Schrijf een programma. Het neemt woorden van de opdrachtregel. Het verandert elk woord in zijn antoniem. Een antoniem is een woord met de tegengestelde betekenis. Sommige woorden staan niet in het woordenboek. Verander deze woorden niet. Print ze zoals ze zijn.

Bewaar het woordenboek met antoniemen in een hash. Schrijf de hash direct in de code. Om u te helpen, hebben we een lijst van ongeveer 200 paren gemaakt. U kunt hem kopiëren en in uw programma plakken: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Elk paar staat twee keer in de lijst, één keer in elke richting. Bijvoorbeeld:

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

Maak het programma zo simpel mogelijk. Print elk woord op een eigen regel.

## Voorbeeld

Voer het programma uit en geef het een paar woorden. Minstens een paar van de woorden moeten in het woordenboek staan.

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
