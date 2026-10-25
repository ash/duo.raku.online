---
title: Haketmapoj
---

{% include menu.html %}

_Haketo_ estas plia asociativa datumtipo en Raku. Ĝi estas agregita datumtipo. Ĝi tenas multajn erojn. Ĉiu ero havas nomon kaj valoron. Haketaj variabloj uzas novan siglon: `%`.

```raku
my %capitals;
```

Nun vi povas uzi la haketon. Vi povas asigni al ĝi kelkajn komencajn valorojn.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Vi ankaŭ povas fari ambaŭ aferojn samtempe. Tio funkcias ankaŭ kun aliaj datumtipoj:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Preni la elementojn

Por preni elementon, vi subskribas la haketon. Vi faras tion same kiel ĉe [paroj](../pairs). Metu ŝnuron en angulajn krampojn aŭ en kurbajn krampojn:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Haketoj estas ŝanĝeblaj. Tio signifas, ke vi povas ŝanĝi ilin. Vi povas ŝanĝi la valorojn. Vi ankaŭ povas aldoni novajn:

```raku
%capitals<Germany> = 'Berlin';
```

## Ŝlosiloj kaj valoroj

Raku havas du enkonstruajn metodojn por haketoj, `keys` kaj `values`. La metodo `keys` redonas liston de la ŝlosiloj. La metodo `values` redonas liston de la valoroj:

```raku
say %capitals.keys;
say %capitals.values;
```

La programo povas presi ekzemple ĉi tion:

    (Germany Italy France)
    (Berlin Rome Paris)

Notu, ke la elementoj de haketo ne havas ordon. Sed ambaŭ metodoj uzas la saman ordon.

{% include nav.html %}
