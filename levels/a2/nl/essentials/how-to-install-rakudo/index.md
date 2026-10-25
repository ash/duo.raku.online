---
title: Hoe Rakudo te installeren
translations_gpt:
---

{% include menu.html %}

Je hebt een compiler nodig om een Raku-programma uit te voeren. Die moet je eerst installeren. Deze cursus gebruikt Rakudo. Er zijn ook [Raku++](/nl/essentials/the-rakupp-compiler) en [mutsu](/nl/essentials/the-mutsu-interpreter). Die installeer je apart. Lees [Raku++ installeren](/nl/essentials/how-to-install-rakupp) en [mutsu installeren](/nl/essentials/how-to-install-mutsu). Ga naar [de website van Rakudo](https://rakudo.org). Daar kun je de juiste versie voor jouw besturingssysteem downloaden.

## Bronnen

Download een installatieprogramma voor jouw systeem op [rakudo.org/downloads](https://rakudo.org/downloads). Er zijn versies voor alle grote besturingssystemen: Windows, Mac OS en Linux. Er is ook broncode. Die kun je zelf compileren.

## Docker-images

Je kunt Rakudo ook als docker-image krijgen. Daarmee kun je programma's uitvoeren. Je kunt er ook kleine scripts mee testen in een REPL-shell. Alle instructies staan op [github.com/Raku/docker](https://github.com/Raku/docker).

## Versienummers

Een versienummer van Rakudo heeft twee delen. Dat zijn het jaar en de maand van de uitgave. Zo zie je makkelijk hoe nieuw je compiler is. Voer deze opdracht uit om het versienummer te zien:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Hier zie je drie versienummers. Het eerste is de versie van Rakudo zelf: `v2026.06`. Daarna komt de versie van de taal Raku: `v6.d`. Voorlopig krijgt elke update van de taal de volgende letter. Die letter is het kleine deel van de versie. Daarna komt bijvoorbeeld `v6.e`, enzovoort. Aan het einde zie je de naam van de virtuele machine. Deze compiler gebruikt MoarVM versie `2026.06`.

{% include nav.html %}
