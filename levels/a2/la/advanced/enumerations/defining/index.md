---
title: Enumerationem definire
translations_gpt:
---

{% include menu.html %}

Ut enum declares, verbum clavis `enum` scribe. Deinde nomen et indicem nominum pro constantibus scribe:

```raku
enum Colour <red green blue>;
```

Hoc novum typum facit, `Colour`. Etiam tres constantes facit: `red`, `green`, et `blue`. Constantem solo nomine eius adhibere potes:

```raku
say red;   # red
say green; # green
```

Post quodque nomen est numerus. Raku numeros pro te dat. Ab zero incipit et ordinem indicis tui sequitur. Itaque `red` est `0`, `green` est `1`, et `blue` est `2`. Valores ordinem habent. Itaque constantes comparare potes:

```raku
say red < blue; # True
```

Variabilis enum ut typum suum habere potest. Tum variabilis solas has constantes accipit:

```raku
my Colour $c = green;
say $c; # green
```

Constans et aliquid aliud idem nomen habere possunt. Tum nomen enumerationis et `::` ante constantem scribe. Hoc semper operatur:

```raku
say Colour::red; # red
```

Enum constantes cognatas coniungit. Eis nomen et typum dat. Codex cum his constantibus multo clarior est quam codex cum solis numeris. Proximum thema est de [numeris post nomina](/la/advanced/enumerations/values-and-keys).

{% include nav.html %}
