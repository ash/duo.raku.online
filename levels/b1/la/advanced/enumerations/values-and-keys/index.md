---
title: Valores et claves
translations_gpt:
---

{% include menu.html %}

Omnis constans enumerationis et nomen et numerum habet. Methodus `.value` numerum reddit, et `.key` nomen ut chordam reddit:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Non necesse est numeros automaticos ab zero adhibere. Ut valores ipse eligas, constantes ut paria scribe:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Hic hebdomas operaria ab uno potius quam ab zero incipit.

Typus enumerationis etiam ipse omnes constantes suas enumerare potest. Methodus eius `.enums` tabulam reddit quae quodque nomen cum valore suo coniungit:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Hae tres methodi, `.value`, `.key` et `.enums`, tibi permittunt libere ire. A constante ad numerum eius ire potes et a numero retro ad data. Etiam cum toto grege operari potes. Hoc enumerationes utiles reddit pro rebus ut indicibus, statibus et tabulis inspectionis.

{% include nav.html %}
