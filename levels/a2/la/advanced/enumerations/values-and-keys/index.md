---
title: Valores et claves
translations_gpt:
---

{% include menu.html %}

Quaeque constans enumerationis nomen et numerum habet. Methodus `.value` numerum dat. Methodus `.key` nomen ut chordam dat:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku constantes ab zero numerat. Sed hoc mutare potes. Constantes ut paria scribe. Tum valores ipse eligis:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Hic hebdomas operaria ab uno incipit, non ab zero.

Typus enumerationis etiam omnes constantes suas monstrare potest. Methodus `.enums` tabulam reddit. Tabula similis est hash. In hac tabula quodque nomen valorem suum habet:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Cum `.value`, `.key`, et `.enums` libere ire potes. A constante ad numerum eius ire potes. A numero retro ad data ire potes. Et per totum gregem ire potes. Itaque enumerationes utiles sunt, exempli gratia, pro indicibus, statibus, et tabulis inspectionis.

{% include nav.html %}
