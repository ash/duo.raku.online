---
title: Nomoj de la variabloj
---

{% include menu.html %}

Antaŭ ol ni daŭrigas, ni rigardu interesan temon. Kiajn nomojn povas havi variabloj? Ĝis nun, ni uzis simplajn nomojn, kiel `$name` aŭ `$age`. Ili havas nur malgrandajn literojn de la angla alfabeto. Sed estas pli da eblecoj.

## Grandaj kaj malgrandaj literoj

Nomoj de variabloj ankaŭ nomiĝas _identigiloj_. En identigiloj, grandaj kaj malgrandaj literoj estas malsamaj. Do ĉiu nomo sube signifas malsaman skalan ujon:

```raku
$myname

$MyName

$myName

$MYNAME
```

Vi decidas, kiel nomi viajn variablojn. Sed jen ideo. Tenu nomojn el nur grandaj literoj por konstantoj. Konstantoj estas valoroj, kiuj ne ŝanĝiĝas.

## Aliaj signoj

Kelkaj aliaj ASCII-signoj ankaŭ eblas. Vi povas uzi ciferojn kaj la substrekon `_`. Vi ankaŭ povas uzi la strekon `-` kaj la unuopan citilon `'`. Ĉi tie, la unuopa citilo signifas apostrofon. Identigilo devas komenciĝi per litero aŭ substreko. Post `-` aŭ `'`, devas esti litero. Jen kelkaj pliaj ĝustaj identigiloj:

```raku
$___

$a'b'c

$my-name

$address2
```

Denove, vi elektas la nomojn. Sed kelkaj nomoj aspektas kiel sekreta kodo. Verŝajne estas malbona ideo intence elekti tiajn nomojn.

## Unikodaj signoj

Fakte, ekzistas multe pli da literoj kaj ciferoj. Unikodo havas ecojn por ĉiu signo. Ili diras, ĉu la signo estas litero aŭ decimala cifero. Raku uzas tiujn ecojn. Ekzemple, ĉi tiuj variabloj estas ĝustaj en Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # kie ۲ estas cifero
```

{% include nav.html %}
