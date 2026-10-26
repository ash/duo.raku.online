---
title: zef en het ecosysteem
translations_gpt:
---

{% include menu.html %}

`zef` is de module-installeerder van Raku. Je hebt het al gebruikt om modules op naam te installeren. Het werkt ook met een lokale distributiemap. Vanuit een distributie kun je ze direct testen en installeren:

```
zef test .
zef install .
```

`zef test .` voert de bestanden onder `t/` uit. `zef install .` installeert de distributie in je Raku, zodat andere programma's ze met `use` kunnen laden. Installeren op naam, zoals bij `zef install Cro`, doet hetzelfde. Maar dan downloadt het eerst de distributie uit het ecosysteem.

Je kunt je eigen distributie **publiceren**, zodat anderen ze op naam kunnen installeren. Daarvoor upload je ze naar het ecosysteem. Het gebruikelijke gereedschap hiervoor is `fez`:

```
fez upload
```

Dit verpakt de huidige distributie en stuurt ze naar het Raku-ecosysteem. Daarna werkt `zef install Maths::Simple` voor iedereen.

> Voor deze commando's moet `zef`/`fez` geïnstalleerd zijn, en je hebt een netwerkverbinding nodig. Voor uploaden heb je ook een ecosysteemaccount nodig.

Het leven van een gedeelde module heeft dus drie stappen. Je geeft hem een indeling met een `META6.json` en test hem met `zef test`. Daarna publiceer je hem met `fez upload`. Vanaf dan is hij gewoon nog een naam die iedereen kan installeren met `zef install`.

{% include nav.html %}
