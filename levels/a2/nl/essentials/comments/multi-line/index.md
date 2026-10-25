---
title: Meerzijdige opmerkingen
---

{% include menu.html %}

Soms is een opmerking langer dan één regel. Dan heb je twee keuzes. Je kunt een paar eenregelige opmerkingen schrijven. Of je schrijft één meerregelige opmerking.

Een meerregelige opmerking begint met twee tekens: ``#` ``. Daarna komt een paar haakjes: `( )`, `{ }`, `[ ]` of `< >`. Je kunt ze ook herhalen: `(( ))`, `[[[ ]]]` enzovoort.

Bijvoorbeeld:

```raku
my $name;
#`( We gaan de gebruiker vragen
om eerst hun naam in te voeren en vervolgens
de invoer in een variabele op te slaan. )

$name = prompt 'Wat is je naam? ';
#`{ Het programma wacht nu
totdat de gebruiker de naam invoert
en op Enter drukt. }

say $name; #`( En nu kunnen we het afdrukken )
```

{% include nav.html %}
