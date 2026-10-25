---
title: De Rakudo-compiler
translations_gpt:
---

{% include menu.html %}

**Rakudo** is de referentie-implementatie van Raku: de belangrijkste, standaard compiler. Deze cursus gebruikt het. Vandaag is het de meest complete manier om Raku uit te voeren. Het is ook goed getest in echt werk. Als mensen het over “de Raku-compiler” hebben, bedoelen ze dus meestal Rakudo.

Rakudo zelf is vooral in Raku geschreven. Een kleinere taal, NQP (“Not Quite Perl”), helpt om het te bouwen. Je programma wordt naar bytecode gecompileerd en draait op een virtuele machine die **MoarVM** heet. Je krijgt MoarVM automatisch als je Rakudo installeert. Rakudo probeert de hele taal te dekken. Daarom is het de veiligste keuze als elk deel van Raku moet werken.

Rakudo ondersteunt Raku 6.d. Nieuwe uitgaven komen vaak uit, zodat verbeteringen en nieuwe mogelijkheden je snel bereiken.

## De virtuele machine

Standaard draait Rakudo op MoarVM, een virtuele machine die speciaal voor Raku gemaakt is. Het ontwerp bindt Rakudo niet aan één machine. Rakudo kan ook op andere virtuele machines gebouwd worden. Maar MoarVM is de standaard, goed ondersteunde keuze. Deze cursus gaat ervan uit dat je die gebruikt. Dat is het belangrijkste verschil met [Raku++](/nl/essentials/the-rakupp-compiler). Raku++ is in C++ geschreven en heeft geen eigen virtuele machine nodig.

## Broncode en links

Rakudo is open source, en iedereen kan de ontwikkeling volgen:

* [rakudo.org](https://rakudo.org)
* [Rakudo op GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
