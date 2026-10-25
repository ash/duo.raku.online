---
title: Hallo, Wereld!
---

{% include menu.html %}

Geweldig! Nu kennen we de basis. We kunnen met Raku praten en zijn antwoord zien. Laten we dus naar het eerste echte programma gaan: 'Hallo, Wereld!'.

```raku
say 'Hallo, Wereld!';
```

Straks leren we de basis van functies. Maar eerst zie je hier andere manieren om dit programma te schrijven.

Ten eerste kun je het functieargument tussen haakjes zetten:

```raku
say('Hallo, Wereld!');
```

Ten tweede kun je andere functies gebruiken: `put` en `print`. Ook nu kun je ze met of zonder haakjes schrijven:

```raku
put 'Hallo, Wereld!';

print("Hallo, Wereld!\n");
```

Bij `print` moet je het nieuwe-regelteken zelf toevoegen. Dit teken begint een nieuwe regel. Zet het aan het einde van het bericht. Maar maak je geen zorgen. We bekijken al deze details later.

Voordat we verdergaan, laat ik nog één spannende manier zien. Je kunt de functie als methode aanroepen. Roep hem direct op de string aan:

```raku
'Hallo, Wereld!'.say;
```

{% include nav.html %}
