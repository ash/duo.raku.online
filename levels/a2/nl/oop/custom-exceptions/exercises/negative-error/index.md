---
title: Oefening ’Een negatieve fout‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Maak een eigen exceptieklasse `Negative`. Dat is een klasse voor je eigen fouten. Ze erft van `Exception`. Ze heeft een attribuut `n`. Haar methode `message` geeft `<n> is negative` terug.

Schrijf een subroutine `check($n)`. Als haar argument kleiner is dan nul, werpt ze een `Negative`. Deze `Negative` bevat de `n`. Anders geeft de subroutine het argument terug. Roep daarna `check(-5)` aan in een blok. Voeg een `CATCH`-faser met `when Negative` toe. Die drukt de melding van de exceptie af.

Werp aan het einde, na het blok, nog een `Negative`. De `n` daarvan is `-10`. Daar is geen `CATCH` om hem te vangen. Dit laat zien wat er dan gebeurt. De exceptie stopt het programma.

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
