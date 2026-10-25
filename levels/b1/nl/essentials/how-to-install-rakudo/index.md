---
title: Hoe Rakudo te installeren
translations_gpt:
---

{% include menu.html %}

Om een programma in Raku uit te voeren, moet je een compiler installeren. Deze cursus gebruikt Rakudo. De andere twee, [Raku++](/nl/essentials/the-rakupp-compiler) en [mutsu](/nl/essentials/the-mutsu-interpreter), installeer je apart. Zie [Raku++ installeren](/nl/essentials/how-to-install-rakupp) en [mutsu installeren](/nl/essentials/how-to-install-mutsu). Ga naar [de website van Rakudo](https://rakudo.org) en download de versie voor jouw besturingssysteem.

## Bronnen

Je kunt een installatieprogramma voor jouw systeem downloaden op [rakudo.org/downloads](https://rakudo.org/downloads). Er zijn versies voor alle grote besturingssystemen: Windows, Mac OS en Linux. Je kunt ook de broncode ophalen en die zelf compileren.

## Docker-images

Rakudo is ook beschikbaar als docker-image. Je kunt het gebruiken om programma's uit te voeren. Het is ook handig om kleine scripts te testen in een REPL-shell. Alle instructies vind je op [github.com/Raku/docker](https://github.com/Raku/docker).

## Versienummers

Een versienummer van Rakudo heeft twee delen: het jaar en de maand van de uitgave. Zo zie je makkelijk hoe nieuw je compiler is. Voer deze opdracht uit om het versienummer te zien:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Hier zie je drie versienummers. Het eerste is de versie van Rakudo zelf: `v2026.06`. Dan volgt de versie van de taal Raku: `v6.d`. Voorlopig krijgen updates de volgende letter als kleine versie. De volgende is bijvoorbeeld `v6.e`, enzovoort. Ten slotte zie je de naam van de virtuele machine in deze compiler: MoarVM versie `2026.06`.

{% include nav.html %}
