---
title: De mutsu-interpreter
translations_gpt:
---

{% include menu.html %}

**mutsu** is een derde implementatie van Raku, in **Rust** geschreven door Tokuhiro Matsuno. Net als Rakudo compileert hij je programma naar bytecode en voert hij het uit op een virtuele machine. Maar die virtuele machine is niet MoarVM. Het is een eigen machine van mutsu, ingebouwd in het uitvoerbare bestand `mutsu`.

mutsu ondersteunt Raku 6.d en wordt nog actief ontwikkeld. De auteur zegt openlijk dat mutsu nog niet klaar is voor echte projecten. Maar hij slaagt nu al voor bijna alle testbestanden van Roast. Daarom draaien bijna alle programma's in deze cursus er zonder veranderingen op.

Eén probleem is belangrijk zolang je leert: sommige controles tijdens het compileren ontbreken nog. De duidelijkste, in versie 0.24.0, is deze. Stel dat je vergeet een variabele te declareren. Rakudo en Raku++ melden dat voordat het programma draait. Maar mutsu doet dat niet. Als de cursus zo'n fout laat zien, probeer dat voorbeeld dan met Rakudo of Raku++.

## Raku in de browser

mutsu kan ook naar WebAssembly worden gecompileerd. Dan draait hij in een webpagina. Zijn website, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), gebruikt dit op verschillende manieren. Die heeft een inleiding tot Raku in het Engels en het Japans. Er is ook een praktische tutorial. En er is een speeltuin waar je Raku kunt uitvoeren zonder iets te installeren. Op al die pagina's draait mutsu zelf.

## Modules

mutsu heeft een eigen kopie van de pakketbeheerder zef, die `mzef` heet. Je kunt er dus op de gewone manier Raku-modules voor installeren. Typ gewoon `mzef install` en de naam van de module.

## Broncode

mutsu is open source. Je vindt hem op [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Daar staan ook kant-en-klare builds en bouwinstructies.

{% include nav.html %}
