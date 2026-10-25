---
title: Raku, Rakudo, Raku++ en mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** is de naam van de programmeertaal. Een **compiler** is een programma. Het leest je code en voert die uit. Raku kan meer dan één compiler hebben. Deze cursus gebruikt **Rakudo**, de oudere en bekende. Er zijn ook nieuwere: **Raku++** en **mutsu**.

## Meer dan één compiler

Het ontwerp van Raku zegt niet welke compiler je moet gebruiken. Bij de ontwerpdocumenten hoort een set tests. Die set heet Roast. Iedereen mag een compiler schrijven. Als die voor deze tests slaagt, is het een Raku-compiler.

Lange tijd was Rakudo de enige complete en stabiele compiler. Nu klopt dat niet meer. In juli 2026 kwam er een tweede compiler: **Raku++**. De auteur schreef hem in C++. Zijn programmabestand heet `rakupp`. Versie 5.4.1 slaagt voor alle Roast-tests. Hij start ook heel snel. Deze cursus gebruikt Rakudo voor de voorbeelden. Maar je leert de taal Raku zelf. Bijna alles daarvan werkt ook op Raku++, zonder veranderingen.

Er is ook een derde: **mutsu**. Het is een interpreter. Tokuhiro Matsuno schreef hem in Rust. Hij compileert Raku-code naar bytecode. Daarna voert zijn eigen virtuele machine die bytecode uit. Je kunt hem ook in een webbrowser uitvoeren, via WebAssembly. Zijn website heeft een Raku-tutorial en een speeltuin. Allebei draaien ze op mutsu. De auteur werkt er nog hard aan. De auteur zegt dat hij nog niet klaar is voor echte projecten. Maar hij slaagt nu al voor bijna alle testbestanden van Roast.

De volgende pagina's laten alle drie zien: Rakudo, Raku++ en mutsu. Ze laten ook zien hoe je ze installeert.

## Externe links

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ op GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
