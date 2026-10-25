---
title: De Rakudo-compiler
translations_gpt:
---

{% include menu.html %}

**Rakudo** is de belangrijkste compiler van Raku. Deze cursus gebruikt het. Vandaag is Rakudo de meest complete manier om Raku uit te voeren. Het is ook heel goed getest in echt werk. Als mensen “de Raku-compiler” zeggen, bedoelen ze dus meestal Rakudo.

Rakudo zelf is vooral in Raku geschreven. Een kleinere taal helpt om het te bouwen. Die taal is NQP, een afkorting van “Not Quite Perl”. Rakudo compileert je programma naar bytecode. Daarna voert het de bytecode uit op een virtuele machine die **MoarVM** heet. Als je Rakudo installeert, krijg je MoarVM er ook bij. Rakudo probeert de hele taal te dekken. Moet elk deel van Raku voor jou werken? Dan is Rakudo de veiligste keuze.

Rakudo ondersteunt Raku 6.d. Nieuwe versies van Rakudo komen vaak uit. Zo krijg je snel verbeteringen en nieuwe mogelijkheden.

## De virtuele machine

Normaal draait Rakudo op MoarVM. MoarVM is een virtuele machine, speciaal gemaakt voor Raku. Maar Rakudo kan ook met andere virtuele machines werken. Je kunt het bovenop die machines bouwen. Toch is MoarVM de standaardkeuze. Het heeft goede ondersteuning. Deze cursus verwacht dat je MoarVM gebruikt. Dit is het grootste verschil tussen Rakudo en [Raku++](/nl/essentials/the-rakupp-compiler). Raku++ is in C++ geschreven. Het heeft geen eigen virtuele machine nodig.

## Broncode en links

Rakudo is open source. Iedereen kan de ontwikkeling volgen:

* [rakudo.org](https://rakudo.org)
* [Rakudo op GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
