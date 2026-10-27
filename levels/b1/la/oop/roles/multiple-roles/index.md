---
title: Plures partes componere
translations_gpt:
---

{% include menu.html %}

Classis plus quam unam partem facere potest. Simpliciter quamque partem cum proprio `does` enumeras:

```raku
role Walk {
    method move { 'walking' }
}

role Swim {
    method dive { 'diving' }
}

class Duck does Walk does Swim {
}
```

Classis `Duck` nunc duas methodos habet, `move` ex `Walk` et `dive` ex `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Partes ita coniungere _compositio_ appellatur. Tibi permittit classem ex pluribus portionibus agendi rationis separatis aedificare. Hoc saepe flexibilius est quam una catena hereditatis. Classis exacte eas facultates immiscere potest quibus eget, et nihil amplius.

{% include nav.html %}
