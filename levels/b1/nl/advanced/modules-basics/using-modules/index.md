---
title: Modules gebruiken
translations_gpt: Modules gebruiken
---

{% include menu.html %}

Om een module te gebruiken, laad je hem met het `use`-statement. Daarna zijn de namen die de module exporteert beschikbaar. Je kunt ze gebruiken alsof je ze zelf had geschreven.

Zo gebruikt een programma het bestand `Greeting.rakumod` uit het vorige onderwerp:

```raku
use Greeting;

say hello('Anna');
```

`hello` is gemarkeerd met `is export`, dus het `use`-statement maakt hem beschikbaar. Het programma roept hem direct aan:

```
Hello, Anna!
```

Raku kan de module alleen vinden als hij op het modulezoekpad staat. Misschien staat je modulebestand in dezelfde map als je programma. Zeg in dat geval tegen Raku dat het daar moet zoeken, met de `-I.`-optie. De punt betekent "de huidige map":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku vindt geïnstalleerde modules automatisch. Die worden later behandeld, in [Modules van het web installeren](/nl/advanced/installing-modules). Je hebt de optie `-I` dus alleen nodig voor modules naast je eigen programma.

{% include nav.html %}
