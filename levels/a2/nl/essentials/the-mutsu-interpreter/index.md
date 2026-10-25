---
title: De mutsu-interpreter
translations_gpt:
---

{% include menu.html %}

**mutsu** is een derde implementatie van Raku. Tokuhiro Matsuno schreef hem in **Rust**. Net als Rakudo compileert hij je programma naar bytecode. Daarna voert hij de bytecode uit op een virtuele machine. Maar die machine is niet MoarVM. Het is de eigen machine van mutsu. Die zit in het programmabestand `mutsu`.

mutsu ondersteunt Raku 6.d. De auteur werkt er nog veel aan. Het programma is nog niet klaar voor echte projecten. Dat zegt de auteur duidelijk. Maar het slaagt nu al voor bijna alle testbestanden van Roast. Daarom werken bijna alle programma's in deze cursus er zonder veranderingen op.

Eén ontbrekend stuk is belangrijk als je leert. Sommige controles tijdens het compileren zijn er nog niet. Die controles gebeuren voordat het programma draait. Dit is het duidelijkste geval, in versie 0.24.0. Misschien vergeet je een variabele te declareren. Rakudo en Raku++ melden dat voordat het programma draait. Maar mutsu doet dat niet. Laat de cursus zo'n foutmelding zien? Probeer dat voorbeeld dan met een van de twee andere compilers.

## Raku in de browser

Je kunt mutsu ook naar WebAssembly compileren. Dan draait hij in een webpagina. Zijn website, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), gebruikt dit. Die heeft een inleiding tot Raku in het Engels en het Japans. Er is ook een tutorial. Daarin probeer je zelf dingen uit. En er is een speeltuin. Daar kun je Raku uitvoeren zonder iets te installeren. Al deze pagina's gebruiken mutsu zelf.

## Modules

mutsu heeft een eigen kopie van de pakketbeheerder zef. Die kopie heet `mzef`. Je kunt dus zoals gewoonlijk Raku-modules voor mutsu installeren. Typ `mzef install` en dan de naam van de module.

## Broncode

mutsu is open source. Je vindt hem op [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). De pagina heeft ook kant-en-klare builds en bouwinstructies.

{% include nav.html %}
