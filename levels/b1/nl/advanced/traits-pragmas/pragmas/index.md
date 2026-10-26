---
title: Pragma's
translations_gpt:
---

{% include menu.html %}

Een _pragma_ lijkt op een module die je met `use` laadt. Maar het haalt geen code binnen. In plaats daarvan verandert het een compilatieregel voor de rest van het huidige bereik. Je zet het aan met `use`, en, waar dat zin heeft, uit met `no`.

Het belangrijkste pragma, `strict`, staat in Raku **standaard aan**. Het eist dat je elke variabele declareert voordat je hem gebruikt. Daarom merkt Raku een typefout in een variabelenaam op. Zonder dit pragma zou de typefout stilletjes een nieuwe variabele aanmaken.

Als je `strict` uitzet met `no strict`, geldt deze regel niet meer. Dan kun je toekennen aan een variabele die nooit met `my` gedeclareerd is:

```raku
no strict;

$x = 42;
say $x; # 42
```

Met het standaard `strict` zou deze kale `$x = 42` een compilatiefout zijn. De melding is *Variable '$x' is not declared*. De regel `no strict` maakt de eis minder streng, tot het einde van het bereik eromheen.

Andere pragma's zijn bijvoorbeeld `fatal`, `isms` en `variables`. `fatal` maakt van een stille mislukking een geworpen exceptie. Dat is handig zodra je weet hoe je excepties afhandelt. `isms` staat schrijfwijzen toe die uit andere talen komen. Met `variables` kun je de regels voor variabelen aanpassen. De werking van een pragma is _lexicaal_. Ze duurt alleen tot het einde van het blok waarin het pragma staat. Zo kun je een regel strenger of losser maken. Dat kan precies in het stuk code waar je het nodig hebt.

Eén pragma neemt een argument: `lib`. Het voegt een map toe aan de lijst die Raku doorzoekt als het modules laadt. Het doet hetzelfde als de opdrachtregeloptie `-I`, maar dan binnen het programma:

```raku
use lib 'lib';
```

Je gaat het gebruiken zodra je je eigen [modules](/nl/advanced/modules-basics/using-modules) begint te schrijven en te laden.

{% include nav.html %}
