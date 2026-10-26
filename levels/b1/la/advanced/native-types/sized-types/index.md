---
title: Typi cum magnitudine et superfluentia
translations_gpt:
---

{% include menu.html %}

Praeter simplicem `int`, Raku numeros integros magnitudinis fixae in bitis habet. Hi sunt `int8`, `int16`, `int32`, `int64`, et eorum socii non signati `uint8`, `uint16`, `uint32`, `uint64`. Numerus ostendit quot bitos valor occupet.

Cum latitudo fixa est, ambitus quoque fixus est. `int8` valores a `-128` ad `127` continet, et `uint8` ab `0` ad `255`. Repositorium crescere non potest, itaque valor qui summum transit ad imum circumvolvitur. Hoc _superfluxus_ vocatur:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Si unum ad maximum `int8` addis, `128` non accipis. Ille numerus locum non haberet. Potius ad minimum valorem, `-128`, circumvolvitur. Typi non signati quoque circumvolvuntur:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Normalis `Int` contrarium est. Simpliciter tam magnus crescit quam opus est et numquam superfluit. Hoc pactum est totum propositum typorum nativorum dimensorum. Ambitum fixum accipis. Pro hoc repositorium certum, parvum et celere accipis.

Scisne ambitum datorum tuorum, et visne efficientiam? Tum typum nativum dimensum adhibe. Exempli gratia, bytes datorum binariorum in indice `uint8` serva. Pro arithmetica ordinaria, ubi numeri sine limite crescere possunt, `Int` retine.

{% include nav.html %}
