---
title: Tests uitvoeren
translations_gpt:
---

{% include menu.html %}

Een enkel testbestand is gewoon een Raku-programma. Je kunt het dus direct uitvoeren:

```
raku t/01-basic.rakutest
```

Het print zijn TAP-uitvoer op het scherm. Als je meer dan één of twee bestanden hebt, heb je een _test runner_ nodig. Die voert een hele map met tests uit en geeft een samenvatting van de resultaten. De runner voor Raku is `prove6`:

```
prove6 t/
```

Dit voert elk testbestand onder `t/` uit en meldt hoeveel bestanden en tests geslaagd zijn. Aan het eind staat één totaalresultaat: geslaagd of mislukt. Dit is veel makkelijker te lezen dan de ruwe TAP van elk bestand.

Als een distributie een `META6.json` heeft, kan de moduletool de tests voor je uitvoeren:

```
zef test .
```

`zef test` vindt de map `t/`, voert de tests uit en meldt het resultaat. Precies hetzelfde gebeurt automatisch voordat een distributie wordt geïnstalleerd. Tests hebben dus twee taken. Jij voert ze uit met `prove6` terwijl je aan het ontwikkelen bent. Het ecosysteem voert ze uit om een distributie te controleren voordat iemand die distributie installeert.

> Testbestanden hebben de extensie `.rakutest` (of `.t`). Meestal staan er nummers in hun naam, zoals in `t/01-basic.rakutest`.

{% include nav.html %}
