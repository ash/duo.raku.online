---
title: Oefening ’Een negatieve fout‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Definieer een eigen exceptieklasse met de naam `Negative`. Ze erft van `Exception` en heeft een attribuut `n`. Haar methode `message` geeft `<n> is negative` terug.

Schrijf een subroutine `check($n)`. Als haar argument onder nul ligt, werpt ze een `Negative` met deze `n` erin. Anders geeft ze het argument terug. Roep daarna in een blok `check(-5)` aan. Gebruik een `CATCH`-faser met `when Negative` om de melding van de exceptie af te drukken.

Werp ten slotte, na het blok, nog een `Negative` met `n` gelijk aan `-10`. Geen `CATCH` beschermt deze plek. Dit laat zien dat zo'n exceptie het programma beëindigt.

## Voorbeeld

Het programma drukt af:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
