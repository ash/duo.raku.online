---
title: Mainīgo nosaukumi
---

{% include menu.html %}

Pirms mēs ejam tālāk, apskatīsim interesantu tēmu. Kādi nosaukumi var būt mainīgajiem? Līdz šim mēs izmantojām vienkāršus nosaukumus, piemēram, `$name` vai `$age`. Tajos ir tikai mazie angļu alfabēta burti. Bet ir arī citas iespējas.

## Lielie un mazie burti

Mainīgo nosaukumus sauc arī par _identifikatoriem_. Identifikatoros lielie un mazie burti ir dažādi. Tāpēc katrs nosaukums zemāk nozīmē citu skalāro konteineru:

```raku
$myname

$MyName

$myName

$MYNAME
```

Jūs paši izlemjat, kā nosaukt savus mainīgos. Bet lūk, viena ideja. Nosaukumus tikai ar lielajiem burtiem atstājiet konstantēm. Konstantes ir vērtības, kas nemainās.

## Citi rakstzīmes

Var izmantot arī dažas citas ASCII rakstzīmes. Jūs varat izmantot ciparus un apakšsvītru `_`. Jūs varat izmantot arī defisi `-` un vienpēdiņu `'`. Šeit vienpēdiņa nozīmē apostrofu. Identifikatoram jāsākas ar burtu vai apakšsvītru. Pēc `-` vai `'` ir jābūt burtam. Šeit ir vēl daži pareizi identifikatori:

```raku
$___

$a'b'c

$my-name

$address2
```

Atkal, nosaukumus izvēlaties jūs. Bet daži nosaukumi izskatās kā slepens kods. Droši vien nav laba ideja tādus nosaukumus izvēlēties tīšām.

## Unicode rakstzīmes

Patiesībā burtu un ciparu ir daudz vairāk. Unicode katrai rakstzīmei ir īpašības. Tās saka, vai rakstzīme ir burts vai decimālais cipars. Raku izmanto šīs īpašības. Piemēram, šie mainīgie Raku valodā ir pareizi:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # kur ۲ ir cipars
```

{% include nav.html %}
