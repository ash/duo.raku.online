---
title: Raku, Rakudo, Raku++ en mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** is de naam van de programmeertaal. Een **compiler** is het programma dat je code leest en uitvoert. Raku is niet aan maar één compiler gebonden. Deze cursus gebruikt **Rakudo**, dat al jaren bestaat. Er zijn ook nieuwere: **Raku++** en **mutsu**.

## Meer dan één compiler

Het ontwerp van Raku zegt niet welke compiler je moet gebruiken. Bij de ontwerpdocumenten hoort een verzameling tests die Roast heet. Iedereen mag een compiler schrijven. Als die voor die tests slaagt, is het een Raku-compiler.

Lange tijd was Rakudo de enige complete en stabiele compiler. Nu is dat niet langer zo. In juli 2026 verscheen een tweede compiler: **Raku++**, geschreven in C++. Zijn uitvoerbare bestand heet `rakupp`. Versie 5.4.1 slaagt voor de hele Roast-testsuite. Hij start ook verrassend snel op. Deze cursus gebruikt Rakudo voor de voorbeelden. Maar wat je leert, is de taal Raku zelf. Bijna alles daarvan draait ook zonder veranderingen op Raku++.

Er is ook een derde implementatie, **mutsu**. Het is een interpreter, in Rust geschreven door Tokuhiro Matsuno. Hij compileert Raku naar bytecode voor zijn eigen virtuele machine. Via WebAssembly draait hij ook in een webbrowser. Zijn website heeft een Raku-tutorial en een speeltuin die erop gebouwd zijn. Het project wordt nog actief ontwikkeld. De auteur zegt dat hij nog niet klaar is voor echte projecten. Maar hij slaagt nu al voor bijna alle testbestanden van Roast.

De volgende pagina's bekijken de drie een voor een: Rakudo, Raku++ en mutsu. Ze leggen ook uit hoe je ze installeert.

## Externe links

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ op GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
