---
title: Twee functies in één module
translations_gpt: Oefening 'Twee functies in één module'
---

{% include menu.html %}

## Opgave

Maak een module met de naam `Calc` in het bestand `Calc.rakumod`. Hij exporteert twee subroutines: `add` en `mul`. Elke subroutine krijgt twee argumenten. `add` geeft hun som terug. `mul` geeft hun product terug.

Schrijf dan een apart programma. Het gebruikt de module en drukt `add(3, 4)` en `mul(3, 4)` af. Elk resultaat staat op een eigen regel.

## Voorbeeld

Voer het programma uit met de module op het zoekpad. Het drukt af:

```console
$ raku -I. calc.raku
7
12
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
