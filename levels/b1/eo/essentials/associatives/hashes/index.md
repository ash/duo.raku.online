---
title: Haketmapoj
---

{% include menu.html %}

_Haketo_ estas alia asociativa datumtipo en Raku. Ĝi estas agregita tipo, kiu ligas la nomon de ĉiu ero al ĝia valoro. Haketaj variabloj uzas novan siglon: `%`.

```raku
my %capitals;
```

Nun vi povas uzi la haketon kaj doni al ĝi kelkajn komencajn valorojn.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Kiel kun aliaj datumtipoj, vi povas fari ambaŭ aferojn per unu paŝo:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Alirante la elementojn

Subskribado funkcias simile al tio, kion ni vidis ĉe [paroj](../pairs). Metu ŝnuron en angulajn krampojn aŭ en kurbajn krampojn:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Haketoj estas ŝanĝeblaj, do vi povas ŝanĝi ekzistantajn valorojn kaj aldoni novajn:

```raku
%capitals<Germany> = 'Berlin';
```

## Ŝlosiloj kaj valoroj

Haketo havas du enkonstruajn metodojn, `keys` kaj `values`. Ili redonas liston de ĝiaj ŝlosiloj kaj liston de ĝiaj valoroj:

```raku
say %capitals.keys;
say %capitals.values;
```

Jen ekzemplo de tio, kion ĉi tiu programo presas:

    (Germany Italy France)
    (Berlin Rome Paris)

Notu, ke la elementoj de haketo ne estas en ia ordo. Sed la supraj metodoj redonas la ŝlosilojn kaj la valorojn en la sama ordo.

{% include nav.html %}
