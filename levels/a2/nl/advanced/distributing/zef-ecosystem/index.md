---
title: zef en het ecosysteem
translations_gpt:
---

{% include menu.html %}

`zef` installeert Raku-modules. Je hebt het al gebruikt om modules op naam te installeren. Het werkt ook met een distributie in een lokale map. Ga naar de map van een distributie. Van daaruit kun je de distributie direct testen en installeren:

```
zef test .
zef install .
```

`zef test .` voert de bestanden onder `t/` uit. `zef install .` installeert de distributie in je Raku. Dan kunnen andere programma's de distributie laden met `use`. Je kunt ook op naam installeren, bijvoorbeeld `zef install Cro`. Dat doet hetzelfde. Maar eerst downloadt het de distributie uit het ecosysteem.

Misschien wil je je eigen distributie **publiceren**. Dan kunnen andere mensen ze op naam installeren. Daarvoor upload je ze naar het ecosysteem. Meestal gebruiken mensen daarvoor `fez`:

```
fez upload
```

Dit pakt de huidige distributie in en stuurt ze naar het Raku-ecosysteem. Daarna werkt `zef install Maths::Simple` voor iedereen.

> Deze commando's hebben een geïnstalleerde `zef`/`fez` en het netwerk nodig. Om te uploaden heb je ook een ecosysteemaccount nodig.

Een gedeelde module gaat dus door drie stappen. Eerst geef je hem de standaardindeling en een `META6.json`. Dan test je hem met `zef test`. Daarna publiceer je hem met `fez upload`. Vanaf dan is hij gewoon nog een naam. Iedereen kan hem installeren met `zef install`.

{% include nav.html %}
