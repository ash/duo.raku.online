---
title: Twee functies in één module
translations_gpt: Oefening 'Twee functies in één module'
---

{% include menu.html %}

## Opgave

Maak een module met de naam `Calc` in een bestand `Calc.rakumod`. Hij moet twee subroutines exporteren, `add` en `mul`. Ze geven de som en het product van hun twee argumenten terug.

Schrijf dan een apart programma dat de module gebruikt. Het moet `add(3, 4)` en `mul(3, 4)` afdrukken, elk op een eigen regel.

## Voorbeeld

Als je het uitvoert met de module op het zoekpad, drukt het programma af:

```console
$ raku -I. calc.raku
7
12
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
