---
title: Catena longitudo
---

{% include menu.html %}

Quia fila in Raku Unicode sunt, quaedam res simplices paulo difficiliores fiunt. Vel saltem de eis diligentius cogitare debes. Sume, exempli gratia, longitudinem fili. Estne numerus characterum an numerus byteorum? Et quid si idem character in diversis filis ex diversis partibus constat? Estne adhuc unus character?

## Longitudo in characteribus

Ut scias quot characteres filum habeat, utere _methodo_ `chars`:

```raku
my $str = '你好世界';
say $str.chars;
```

De methodis postea loquemur, sed iam eis uti posse debemus. In Raku methodos in fere omni obiecto vocare potes, etiam in filis et variabilibus scalaribus. Ut methodum voces, puncto utere. Itaque hic methodum in variabili vocamus quae filum tenet: `$str.chars`.

Salutatio Sinensis 你好世界 quattuor characteres habet. Et `$str.chars` exacte `4` reddit.

## Longitudo in byteis

Tantum ad notitiam, sic longitudinem fili in byteis invenis. Hoc casu scire debes quae codificatio pro filo adhibeatur:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Hoc tempore programma `12` imprimit. Nota secundam lineam duas vocationes methodorum in catena habere.

## Longitudo in punctis codicis

Ut rem compleamus, ecce alia methodus utilis quae ad longitudinem fili pertinet: `codes`. Numerum punctorum codicis in filo reddit, postquam filum normalizatum est. In multis casibus `codes` et `chars` eundem numerum reddunt. Sed in quibusdam casibus raris duae methodi diversos eventus dant. Exempli gratia, characterem ‘impossibilem’ aedificare potes. Nullum unum punctum codicis pro eo in toto spatio Unicode est.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Hic character, `x̨`, nullum punctum codicis proprium habet. Solum ex duabus partibus construi potest. Eae sunt littera minuscula `x` et character combinans `0x0328`. Ita adhuc unus character est, sed duo puncta codicis sunt. Ideo programma imprimit:

    1
    2

{% include nav.html %}
