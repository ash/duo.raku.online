---
title: Enumerationem definire
translations_gpt:
---

{% include menu.html %}

Ut enum declares, scribe verbum clavis `enum`, nomen et indicem nominum constantium:

```raku
enum Colour <red green blue>;
```

Nunc est novus typus, `Colour`, cum tribus constantibus: `red`, `green` et `blue`. Quamque constantem directe nomine eius adhibere potes:

```raku
say red;   # red
say green; # green
```

Post quodque nomen est numerus. Raku hos numeros sponte dat, ab zero incipiens, ordine indicis tui. Itaque `red` est `0`, `green` est `1` et `blue` est `2`. Quia valores ordinem habent, constantes comparare potes:

```raku
say red < blue; # True
```

Variabili enum ut typum dare potes. Tum solas illas constantes accipit:

```raku
my Colour $c = green;
say $c; # green
```

Nomen constantis idem esse potest ac aliud nomen in programmate tuo. Tum constantem semper per nomen enumerationis et `::` attingere potes:

```raku
say Colour::red; # red
```

Enum gregi constantium cognatarum nomen et typum dat. Codex qui eas adhibet multo clarior est quam codex cum nudis numeris. Proximum thema [numeros post nomina](/la/advanced/enumerations/values-and-keys) spectat.

{% include nav.html %}
