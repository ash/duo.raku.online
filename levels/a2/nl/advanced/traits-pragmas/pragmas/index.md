---
title: Pragma's
translations_gpt:
---

{% include menu.html %}

Een _pragma_ lijkt op een module. Je laadt het met `use`. Maar het haalt geen nieuwe code binnen. In plaats daarvan verandert het een regel van het compileren. De verandering werkt tot het einde van het huidige bereik. Je zet een pragma aan met `use`. Als dat zin heeft, kun je het uitzetten met `no`.

Het belangrijkste pragma is `strict`. In Raku staat het **standaard aan**. Daardoor moet je elke variabele declareren voordat je hem gebruikt. Zo vindt Raku typefouten in namen van variabelen. Een verkeerde naam maakt niet stilletjes een nieuwe variabele aan.

`no strict` zet `strict` uit. Dan is deze regel weg. Nu kun je een waarde toekennen aan een variabele zonder `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Met het normale `strict` is deze `$x = 42` zonder `my` een fout. Raku toont die tijdens het compileren: *Variable '$x' is not declared*. De regel `no strict` zet dit uit. Dat duurt tot het einde van het bereik.

Er zijn ook andere pragma's. `fatal` laat een stille mislukking een exceptie gooien. Dat is handig als je hebt geleerd hoe je excepties afhandelt. `isms` staat een paar typische schrijfwijzen uit andere talen toe. `variables` verandert de regels voor variabelen. De werking van een pragma is _lexicaal_. Het werkt alleen tot het einde van zijn blok. Zo kun je een regel strenger of minder streng maken. Dat kan precies waar je het nodig hebt.

Eén pragma neemt een argument. Dat is `lib`. Raku zoekt modules in een lijst met mappen. `lib` voegt een map aan deze lijst toe. Het werkt zoals de opdrachtregeloptie `-I`. Maar je schrijft het in het programma:

```raku
use lib 'lib';
```

Je hebt het nodig als je je eigen [modules](/nl/advanced/modules-basics/using-modules) schrijft en laadt.

{% include nav.html %}
