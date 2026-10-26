---
title: Typi cum magnitudine et superfluentia
translations_gpt:
---

{% include menu.html %}

Raku simplicem `int` habet. Etiam numeros integros cum numero fixo bitorum habet. Sunt `int8`, `int16`, `int32`, et `int64`. Quisque eorum socium non signatum habet: `uint8`, `uint16`, `uint32`, et `uint64`. Valores non signati numquam negativi sunt. Numerus in nomine est numerus bitorum quos valor occupat.

Magnitudo fixa ambitum fixum valorum significat. `int8` valores a `-128` ad `127` continet. `uint8` valores ab `0` ad `255` continet. Locus valoris crescere non potest. Itaque cum valor summum transit, circumvolvitur. In imo redit. Hic est _superfluxus_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Adde unum ad maximum `int8`. Non accipis `128`, quia `128` locum non habet. Valor ad minimum valorem, `-128`, circumvolvitur. Typi non signati quoque circumvolvuntur:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Normalis `Int` contrarium est. Simpliciter tam magnus crescit quam opus est. Numquam superfluit. Typi nativi dimensi pactum sunt. Ambitum fixum accipis. Pro hoc repositorium parvum et celere est, et nihil inexspectatum facit. Hoc pactum est totum propositum typorum nativorum dimensorum.

Scisne ambitum datorum tuorum? Visne repositorium celere et parvum? Tum typum nativum dimensum adhibe. Exempli gratia, bytes datorum binariorum in indice `uint8` serva. In arithmetica normali numeri sine limite crescere possunt. Ibi `Int` adhibe.

{% include nav.html %}
