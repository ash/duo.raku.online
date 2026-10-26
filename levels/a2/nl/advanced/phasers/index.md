---
title: Phasers
translations_gpt:
---

{% include menu.html %}

Een _phaser_ is een speciaal blok. Het draait vanzelf op een bepaald moment in het leven van een programma. Het draait niet op zijn plek in de code. Je roept een phaser niet aan. Je zegt alleen _wanneer_ de code moet draaien. De naam van het blok zegt dat.

De meest gebruikte phasers gaan over de fasen van het hele programma:

* `BEGIN` draait zo vroeg mogelijk. Op dat moment compileert Raku het programma nog.
* `INIT` draait één keer als het programma start. Hij draait vóór de hoofdcode.
* `END` draait één keer helemaal aan het einde. Hij draait als de hoofdcode klaar is.

Dit programma heeft deze phasers tussen gewone instructies. Kijk naar de uitvoer. Die volgt niet de volgorde van de regels in het bestand:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

Het programma drukt af:

```
BEGIN
INIT
main body
END
```

`BEGIN` draait als eerste, tijdens de compilatie. Daarna draait het programma. `INIT` draait vóór de hoofdcode. Dan drukt de hoofdcode zijn regel af. `END` draait als laatste. Zijn plek in het bestand maakt niet uit.

Mensen gebruiken `END` vaak om een samenvatting af te drukken. Ze gebruiken het ook om iets op te ruimen. Dat gebeurt vlak voordat het programma stopt. `BEGIN` is handig voor werk dat vóór al het andere moet gebeuren.

{% include nav.html %}
