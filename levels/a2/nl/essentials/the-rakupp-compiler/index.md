---
title: De Raku++-compiler
translations_gpt:
---

{% include menu.html %}

**Raku++** is een tweede Raku-compiler. Het programmabestand heet `rakupp`. De eerste versie kwam uit in juli 2026. Rakudo draait op de virtuele machine MoarVM. Raku++ is anders. De auteur schreef het in **C++**. Het heeft geen eigen virtuele machine nodig.

Het is tegelijk een **interpreter** en een **compiler**. Het kan een programma direct uitvoeren. Het kan een programma ook omzetten naar machinecode. Dat maakt het sneller. Het hoeft niet eerst een groot runtimesysteem te starten. Daarom start `rakupp` in maar een paar milliseconden. Dat maakt het fijn voor korte scripts. Het is ook fijn voor dagelijks werk op de opdrachtregel. De auteur noemt het de snelste Raku-compiler.

Standaard ondersteunt Raku++ Raku 6.d. Het ondersteunt ook 6.e. Een programma vraagt om 6.e met `use v6.e.PREVIEW`. Versie 5.4.1 kwam uit in oktober 2026. Die slaagt voor alle 1.425 testbestanden van Roast. Roast is de officiële verzameling Raku-tests.

Raku++ draait ook in een webbrowser. Daarvoor wordt het naar WebAssembly gecompileerd. De speeltuin op [raku.online](https://raku.online) draait erop. Daar kun je Raku uitproberen zonder iets te installeren.

## Interpreter- en compilermodus

Voer een programma direct uit, net als met Rakudo:

```console
$ rakupp hello.raku
```

Of vraag Raku++ om een programmabestand in machinecode te maken. Dat draait op zichzelf. En het is nog sneller:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Voor dagelijks leren heb je alleen de eenvoudige interpretermodus nodig. De compilerende modi zijn voor extra snelheid.

## Broncode

Raku++ is open source. Je vindt het op [github.com/ash/rakupp](https://github.com/ash/rakupp). De pagina heeft ook bestanden van de uitgaven en instructies om het te bouwen.

{% include nav.html %}
