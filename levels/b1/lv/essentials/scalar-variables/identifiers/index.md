---
title: Mainīgo nosaukumi
---

{% include menu.html %}

Pirms ejam tālāk, lūk, interesanta tēma: kādi nosaukumi var būt mainīgajiem? Līdz šim esam redzējuši vienkāršus nosaukumus, piemēram, `$name` vai `$age`. Tajos bija tikai mazie angļu alfabēta burti. Bet ir arī citas iespējas.

## Lielie burti un mazie burti

Mainīgo nosaukumi jeb _identifikatori_ ir reģistrjutīgi. Tas nozīmē, ka lielie un mazie burti ir atšķirīgi. Tāpēc visi zemāk esošie nosaukumi apzīmē dažādus skalāros konteinerus:

```raku
$myname

$MyName

$myName

$MYNAME
```

Kādu nosaukumu stilu izmantot, tas ir jūsu ziņā. Bet varbūt jūs gribēsiet nosaukumus tikai ar lielajiem burtiem atstāt konstantēm.

## Citi rakstzīmes

Ir atļautas arī dažas citas ASCII rakstzīmes. Tās ir cipari, apakšsvītra `_`, defise `-` un vienpēdiņa `'`. Vienpēdiņa apzīmē apostrofu. Ņemiet vērā, ka identifikatoram jāsākas ar burtu vai apakšsvītru. Gan pēc `-`, gan pēc `'` uzreiz jābūt burtam. Šeit ir vēl daži derīgi identifikatori:

```raku
$___

$a'b'c

$my-name

$address2
```

Atkal, nosaukumu izvēle ir jūsu ziņā. Bet droši vien nav laba prakse tīšām veidot grūti saprotamus nosaukumus.

## Unicode rakstzīmes

Patiesībā burtu un ciparu jēdziens ir plašāks. Tas ietver visas rakstzīmes, kas pēc savām Unicode īpašībām ir burti vai decimālie cipari. Piemēram, šie mainīgie Raku valodā ir derīgi:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # kur ۲ ir cipars
```

{% include nav.html %}
