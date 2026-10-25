---
title: Hallo, Wereld!
---

{% include menu.html %}

Geweldig, we hebben de basis geleerd. Nu kunnen we met Raku praten en zijn antwoord zien. Laten we dus meteen naar het eerste echte programma gaan, 'Hallo, Wereld!'.

```raku
say 'Hallo, Wereld!';
```

Straks leren we de basis van functies. Maar laten we eerst een paar verschillende opties voor dit programma bekijken.

Allereerst kun je het functieargument tussen haakjes zetten:

```raku
say('Hallo, Wereld!');
```

Ten tweede kun je twee andere functies gebruiken, `put` en `print`. Ook nu kun je ze met of zonder haakjes schrijven:

```raku
put 'Hallo, Wereld!';

print("Hallo, Wereld!\n");
```

Let op: bij `print` moet je het nieuwe-regelteken zelf toevoegen. Het hoort aan het einde van het bericht. Maar maak je geen zorgen, we behandelen al deze details later.

Voordat we verdergaan, laat ik je nog één spannende optie zien. Je kunt een functie als methode aanroepen, direct op de string:

```raku
'Hallo, Wereld!'.say;
```

{% include nav.html %}
