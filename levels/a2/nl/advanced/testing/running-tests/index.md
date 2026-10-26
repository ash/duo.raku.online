---
title: Tests uitvoeren
translations_gpt:
---

{% include menu.html %}

Eén testbestand is gewoon een Raku-programma. Je kunt het dus uitvoeren zoals elk programma:

```
raku t/01-basic.rakutest
```

Het print zijn TAP-uitvoer op het scherm. Maar misschien heb je meer dan één of twee bestanden. Dan heb je een _test runner_ nodig. Die voert alle tests in een map uit. Daarna geeft hij een korte samenvatting van de resultaten. De test runner van Raku is `prove6`:

```
prove6 t/
```

Dit voert elk testbestand onder `t/` uit. Het toont hoeveel bestanden en tests geslaagd zijn. Aan het eind geeft het één resultaat voor alles: geslaagd of mislukt. Dit is veel makkelijker te lezen dan de ruwe TAP van elk bestand.

Misschien heeft een distributie een `META6.json`. Dan voert de moduletool de tests voor je uit:

```
zef test .
```

`zef test` vindt de map `t/`. Het voert alle tests uit en toont het resultaat. Hetzelfde gebeurt automatisch voordat iemand een distributie installeert. Tests hebben dus twee taken. Jij voert ze uit met `prove6` terwijl je aan je code werkt. En het ecosysteem voert ze uit voordat iemand een distributie installeert. Zo controleert het de distributie.

> Testbestanden hebben de extensie `.rakutest` of `.t`. Meestal beginnen hun namen met een getal, bijvoorbeeld `t/01-basic.rakutest`.

{% include nav.html %}
