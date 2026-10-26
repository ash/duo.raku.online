---
title: Modules installeren van het web
---

{% include menu.html %}

Je kunt je eigen modules schrijven. Maar de Raku-gemeenschap publiceert ook veel modules. Er zijn modules voor veel dingen, van webframeworks tot dataformaten. Je kunt ze installeren en gebruiken in je programma's.

## Installeren met `zef`

Je installeert modules met `zef`. `zef` is de standaard modulebeheerder. Het zit bij Rakudo. Om een module te installeren, geef je `zef` de naam van de module:

```console
$ zef install JSON::Fast
```

`zef` downloadt de module. Het downloadt ook alles wat de module nodig heeft. Dan voert het de tests van de module uit. Daarna installeert het de module. Nu staat de module automatisch op het zoekpad. Een programma kan hem dus laden met alleen `use`. Je hebt de optie `-I` niet nodig:

```raku
use JSON::Fast;
```

Je kunt ook het ecosysteem doorzoeken. Het ecosysteem bestaat uit alle modules die mensen publiceren. En je kunt modules bijwerken of verwijderen:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Waar modules vandaan komen

Gepubliceerde modules staan in het Raku-_ecosysteem_. Je kunt het bekijken op de website [raku.land](https://raku.land). De website geeft een lijst van de beschikbare distributies. Een distributie bevat één of meer modules. De website toont ook hun documentatie.

## `META6.json`

Een distributie om te delen heeft een bestand met een beschrijving. Het bestand heet `META6.json`. Het bevat de naam en de versie van de distributie. Het noemt de modules in de distributie. Het noemt ook de andere distributies die de distributie nodig heeft. `zef` leest dit bestand. Zo weet het wat het moet installeren. Het weet ook hoe de onderdelen in elkaar passen. Misschien wil je je eigen module publiceren. Geef hem dan een correct `META6.json`. Met dit bestand kunnen alle anderen je module installeren.

{% include nav.html %}
