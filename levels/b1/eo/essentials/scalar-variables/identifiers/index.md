---
title: Nomoj de la variabloj
---

{% include menu.html %}

Antaŭ ol ni daŭrigas, jen interesa temo: kiajn nomojn povas havi variabloj? Ĝis nun, ni vidis simplajn nomojn kiel `$name` aŭ `$age`. Ili havis nur minusklojn de la angla alfabeto. Sed estas pli da eblecoj.

## Majuskloj kaj minuskloj

Nomoj de variabloj, aŭ _identigiloj_, estas sentemaj al majuskloj kaj minuskloj. Tio signifas, ke majuskloj kaj minuskloj estas malsamaj. Do ĉiuj nomoj sube rilatas al malsamaj skalaj ujoj:

```raku
$myname

$MyName

$myName

$MYNAME
```

Vi mem decidas, kiun stilon de nomoj sekvi. Sed eble vi volos rezervi nomojn el nur majuskloj por konstantoj.

## Aliaj signoj

Kelkaj aliaj ASCII-signoj ankaŭ estas permesitaj. Tiuj estas ciferoj, la substreko `_`, la streko `-` kaj la unuopa citilo `'`. La unuopa citilo signifas apostrofon. Notu, ke identigilo devas komenciĝi per litero aŭ substreko. Ambaŭ `-` kaj `'` devas havi literon tuj post si. Jen kelkaj pliaj validaj identigiloj:

```raku
$___

$a'b'c

$my-name

$address2
```

Denove, la elekto de nomoj estas via. Sed verŝajne estas malbona kutimo intence fari nomojn malfacile kompreneblaj.

## Unikodaj signoj

Fakte, la ideo de literoj kaj ciferoj estas pli larĝa. Ĝi inkluzivas ĉiujn signojn, kiuj estas literoj aŭ decimalaj ciferoj laŭ siaj Unikodaj ecoj. Ekzemple, la jenaj variabloj estas validaj en Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # kie ۲ estas cifero
```

{% include nav.html %}
