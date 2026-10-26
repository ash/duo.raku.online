---
title: Modules gebruiken
translations_gpt: Modules gebruiken
---

{% include menu.html %}

Om een module te gebruiken, laad je hem met het statement `use`. Daarna kun je de namen gebruiken die de module exporteert. Het is alsof je ze zelf hebt geschreven.

Neem het bestand `Greeting.rakumod` uit het vorige onderwerp. Een programma gebruikt het zo:

```raku
use Greeting;

say hello('Anna');
```

`hello` heeft de markering `is export`. Het statement `use` maakt hem dus beschikbaar. Het programma roept hem direct aan:

```
Hello, Anna!
```

Raku moet de module vinden. De module moet dus op het modulezoekpad staan. Dat is de lijst met plaatsen waar Raku naar modules zoekt. Misschien staat het modulebestand in dezelfde map als je programma. Laat Raku dan daar zoeken met de optie `-I.`. De punt betekent "de huidige map":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku vindt geïnstalleerde modules automatisch. Daarover leer je later meer, in [Modules van het web installeren](/nl/advanced/installing-modules). Je hebt `-I` dus alleen nodig voor modules naast je programma.

{% include nav.html %}
