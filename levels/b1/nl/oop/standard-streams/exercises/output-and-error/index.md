---
title: Oefening ’Uitvoer en fout‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Een programma telt de lijst getallen `3, 5, 7` in een lus op. Stuur bij elke ronde de huidige tussenstand als voortgangsmelding naar de standaardfout. Stuur na de lus het eindresultaat naar de standaarduitvoer. Gebruik daarbij rechtstreeks de handles van de stromen.

Deze scheiding is belangrijk. Je kunt het resultaat opslaan of doorgeven aan een ander programma. Intussen blijven de voortgangsmeldingen op de standaardfout uit de weg.

## Voorbeeld

Als je het programma draait, verschijnen beide stromen op het scherm. Eerst komen de tussenstanden, en daarna het eindresultaat:

```
running total: 3
running total: 8
running total: 15
15
```

Maar als je de standaardfout weggooit, blijft alleen het echte resultaat over:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
