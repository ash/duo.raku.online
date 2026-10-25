---
title: De Raku++-compiler
translations_gpt:
---

{% include menu.html %}

**Raku++** is een tweede Raku-compiler. Het uitvoerbare bestand heet `rakupp`, en het kwam voor het eerst uit in juli 2026. Rakudo draait op de virtuele machine MoarVM. Raku++ is daarentegen in **C++** geschreven. Het heeft geen eigen virtuele machine nodig.

Het is zowel een **interpreter** als een **compiler**. Het kan een programma direct uitvoeren. Of het kan het vertalen naar machinecode voor extra snelheid. Er hoeft geen zware runtime op te starten. Daarom start `rakupp` in maar een paar milliseconden. Dat maakt het prettig voor korte scripts en dagelijks werk in de terminal. De auteur noemt het de snelste Raku-compiler.

Standaard ondersteunt Raku++ Raku 6.d. Het ondersteunt 6.e als een programma daarom vraagt met `use v6.e.PREVIEW`. Versie 5.4.1 is uitgebracht in oktober 2026. Die slaagt voor alle 1.425 testbestanden van de Roast-suite. Roast is de officiële verzameling Raku-tests.

Raku++ draait ook in een webbrowser. Het wordt naar WebAssembly gecompileerd en laat de speeltuin op [raku.online](https://raku.online) werken. Daar kun je Raku uitproberen zonder iets te installeren.

## Interpreter- en compilermodus

Je kunt een programma meteen uitvoeren, net zoals met Rakudo:

```console
$ rakupp hello.raku
```

Of vraag Raku++ om van een programma een apart uitvoerbaar bestand in machinecode te maken. Dat draait nog sneller:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Voor dagelijks leren is de gewone interpretermodus alles wat je nodig hebt. De compilerende modi zijn er voor als je extra snelheid wilt.

## Broncode

Raku++ is open source. Je vindt het op [github.com/ash/rakupp](https://github.com/ash/rakupp). Daar staan ook kant-en-klare bestanden van de uitgaven en bouwinstructies.

{% include nav.html %}
