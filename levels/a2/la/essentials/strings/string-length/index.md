---
title: Catena longitudo
---

{% include menu.html %}

Fila in Raku sunt fila Unicode. Propter hoc quaedam res simplices paulo difficiliores sunt. Vel saltem de eis plus cogitare debes. Exempli gratia, sume longitudinem fili. Estne numerus characterum? An est numerus byteorum? Et interdum idem character in diversis filis diversas partes habet. Estne tum adhuc unus character?

## Longitudo in characteribus

_Methodus_ `chars` longitudinem fili in characteribus dat:

```raku
my $str = '你好世界';
say $str.chars;
```

De methodis postea loquimur. Sed eis iam nunc uti possumus. In Raku methodos in fere omni obiecto vocare potes. Fila et variabiles scalares etiam obiecta sunt. Ut methodum voces, punctum scribe. Hic variabilis filum tenet. Methodum in hac variabili vocamus: `$str.chars`.

Haec salutatio Sinensis quattuor characteres habet: 你好世界. Et `$str.chars` exacte `4` dat.

## Longitudo in byteis

Hoc solum ad notitiam tuam est. Sic longitudinem fili in byteis accipis. Ad hoc codificationem fili scire debes:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Hoc tempore programma `12` imprimit. Specta secundam lineam. Duas vocationes methodorum habet, alteram post alteram.

## Longitudo in punctis codicis

Denique, ecce alia methodus utilis pro longitudine fili: `codes`. Numerum punctorum codicis in filo dat. Punctum codicis est numerus characteris in Unicode. Antequam numerat, Raku filum normalizat. Filum ad formam communem ducit. Saepe `codes` et `chars` eundem eventum dant. Sed in quibusdam casibus raris duae methodi diversos eventus dant. Exempli gratia, characterem ‘impossibilem’ aedificare potes. Totum spatium Unicode nullum unum punctum codicis pro eo habet.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Character `x̨` nullum punctum codicis proprium habet. Eum solum ex duabus partibus aedificare potes. Prima pars est littera minuscula `x`. Secunda pars est character combinans `0x0328`. Is signum litterae addit. Ita unus character est, sed duo puncta codicis habet. Ideo programma hoc imprimit:

    1
    2

{% include nav.html %}
