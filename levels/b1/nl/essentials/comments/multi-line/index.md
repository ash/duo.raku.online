---
title: Meerzijdige opmerkingen
---

{% include menu.html %}

Als je opmerking langer is dan één regel, heb je een keuze. Je kunt een paar eenregelige opmerkingen schrijven of één meerregelige opmerking.

Meerregelige opmerkingen beginnen met twee tekens: ``#` ``. Daarna komen een openend en een sluitend teken: `( )`, `{ }`, `[ ]` of `< >`. Je kunt ze ook herhalen, bijvoorbeeld `(( ))`, `[[[ ]]]` enzovoort.

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
