---
title: Modules installeren van het web
---

{% include menu.html %}

Je bent niet beperkt tot de modules die je zelf schrijft. De Raku-gemeenschap heeft een grote verzameling modules gepubliceerd. Ze gaan over alles, van webframeworks tot dataformaten. Je kunt ze installeren en gebruiken in je eigen programma's.

## De `zef`-installer

Modules worden geïnstalleerd met `zef`, dat de standaard modulebeheerder is. Het wordt samen met Rakudo geleverd. Om een module te installeren, geef je de naam ervan aan `zef`:

```console
$ zef install JSON::Fast
```

`zef` downloadt de module samen met alles waar die van afhankelijk is. Daarna voert het de tests van de module uit en installeert het de module. Een geïnstalleerde module staat automatisch op het zoekpad. Een programma kan hem dus laden met een gewone `use`. De optie `-I` is niet nodig:

```raku
use JSON::Fast;
```

`zef` kan ook het ecosysteem doorzoeken. Daarnaast kan het modules bijwerken of verwijderen:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Waar modules vandaan komen

Gepubliceerde modules horen bij het Raku-_ecosysteem_. Je kunt het bekijken op de website [raku.land](https://raku.land). Die toont de beschikbare distributies en hun documentatie.

## `META6.json`

Een distributie die bedoeld is om te delen, heeft een beschrijvingsbestand met de naam `META6.json`. Dit bestand legt de naam en de versie van de distributie vast. Het noemt ook de modules die ze levert en de andere distributies waar ze van afhankelijk is. `zef` leest dit bestand. Daaruit leert `zef` wat het moet installeren en hoe de onderdelen in elkaar passen. Als je je eigen module publiceert, heeft die een correct `META6.json` nodig. Dat zorgt ervoor dat alle anderen hem kunnen installeren.

{% include nav.html %}
