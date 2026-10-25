---
title: Nomina variabilium
---

{% include menu.html %}

Antequam pergimus, ecce res iucunda: quae nomina variabiles habere possunt? Hactenus nomina simplicia vidimus, ut `$name` vel `$age`. Ea solum litteras minusculas alphabeti Anglici habebant. Sed plures possibilitates sunt.

## Maiusculae et minusculae

Nomina variabilium, vel _identificatores_, sunt sensitiva ad litteras. Hoc significat litteras maiusculas et minusculas differre. Itaque omnia nomina infra ad diversa continentia scalaria referunt:

```raku
$myname

$MyName

$myName

$MYNAME
```

Quam rationem nominandi sequaris, tua res est. Sed fortasse nomina tota maiuscula pro constantibus servare vis.

## Aliae litterae

Etiam alii characteres ASCII permittuntur. Sunt digiti, underscore `_`, hyphen `-` et apex singulus `'`. Apex singulus pro apostropho stat. Nota identificatorem a littera vel ab underscore incipere debere. Et `-` et `'` litteram statim post se habere debent. Ecce aliquot alii identificatores validi:

```raku
$___

$a'b'c

$my-name

$address2
```

Iterum, electio nominum tua est. Sed fortasse mala consuetudo est nomina consulto obscura facere.

## Characteres Unicode

Re vera notio litterarum et digitorum latior est. Omnes characteres includit qui secundum proprietates Unicode litterae vel digiti decimales sunt. Exempli gratia, variabiles sequentes in Raku validae sunt:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # ubi ۲ est digitus
```

{% include nav.html %}
