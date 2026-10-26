---
title: Phasers
translations_gpt:
---

{% include menu.html %}

Een _phaser_ is een speciaal blok. Het draait automatisch op een bepaald moment in het leven van een programma. Het draait niet op de plek waar het in de broncode staat. Je roept een phaser niet aan. Je geeft alleen aan _wanneer_ de code moet draaien, met de naam van het blok.

De meest gebruikte phasers markeren de fasen van het hele programma:

* `BEGIN` draait zo vroeg mogelijk, terwijl Raku het programma nog compileert;
* `INIT` draait één keer als het programma start, vóór de hoofdcode;
* `END` draait één keer helemaal aan het einde, als de hoofdcode klaar is.

Het volgende programma zet deze phasers tussen gewone instructies. Merk op dat de uitvoer niet de volgorde van de regels in het bestand volgt:

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

`BEGIN` draait als eerste, terwijl het programma gecompileerd wordt. Als het programma daarna draait, komt `INIT` vóór de hoofdcode. Daarna drukt de hoofdcode zijn tekst af. `END` draait als laatste, waar het ook in het bestand staat.

`END` wordt vaak gebruikt vlak voordat het programma eindigt. Het kan een samenvatting afdrukken of iets opruimen. `BEGIN` is handig voor werk dat moet gebeuren voordat er iets anders gebeurt.

{% include nav.html %}
