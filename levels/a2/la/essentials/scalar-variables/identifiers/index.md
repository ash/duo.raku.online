---
title: Nomina variabilium
---

{% include menu.html %}

Antequam pergimus, rem iucundam spectemus. Quae nomina variabiles habere possunt? Adhuc nomina simplicia adhibuimus, ut `$name` vel `$age`. Ea solum litteras minusculas alphabeti Anglici habent. Sed plures optiones sunt.

## Litterae maiusculae et minusculae

Nomina variabilium etiam _identificatores_ vocantur. In identificatoribus litterae maiusculae et minusculae differunt. Itaque omne nomen infra aliud continens scalare significat:

```raku
$myname

$MyName

$myName

$MYNAME
```

Tu nomina variabilium tuarum eligis. Sed ecce consilium. Nomina tota maiuscula pro constantibus serva. Constantes sunt valores qui numquam mutantur.

## Aliae litterae

Etiam alii characteres ASCII possibiles sunt. Digitos et underscore `_` adhibere potes. Etiam hyphen `-` et apicem singulum `'` adhibere potes. Hic apex singulus apostrophum significat. Identificator a littera vel ab underscore incipere debet. Post `-` vel `'` littera esse debet. Ecce alii aliquot identificatores recti:

```raku
$___

$a'b'c

$my-name

$address2
```

Iterum, tu nomina eligis. Sed quaedam nomina sicut codex secretus videntur. Talia nomina consulto eligere fortasse malum consilium est.

## Characteres Unicode

Re vera multo plures litterae et digiti sunt. Unicode proprietates pro omni charactere habet. Eae dicunt utrum character littera an digitus decimalis sit. Raku has proprietates adhibet. Exempli gratia, hae variabiles in Raku rectae sunt:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # ubi ۲ est digitus
```

{% include nav.html %}
