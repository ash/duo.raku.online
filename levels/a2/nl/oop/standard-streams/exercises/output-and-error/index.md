---
title: Oefening ’Uitvoer en fout‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Een programma telt de lijst getallen `3, 5, 7` in een lus op. Stuur bij elke ronde de som tot nu toe naar de standaardfout. Deze som is de tussenstand. Het is een melding over de voortgang. Stuur na de lus het eindresultaat naar de standaarduitvoer. Gebruik de handles van de stromen direct.

Waarom is dit belangrijk? Je kunt het resultaat opslaan of naar een ander programma sturen. De voortgangsmeldingen blijven op de standaardfout. Daar zitten ze niet in de weg.

## Voorbeeld

Draai het programma. Je ziet beide stromen op het scherm. Eerst komen de tussenstanden, dan het eindresultaat:

```
running total: 3
running total: 8
running total: 15
15
```

Maar nu gooien we de standaardfout weg. Alleen het echte resultaat blijft over:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
