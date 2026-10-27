---
title: Plures partes componere
translations_gpt:
---

{% include menu.html %}

Classis plus quam unam partem facere potest. Simpliciter `does` ante quamque partem scribe:

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

Nunc classis `Duck` duas methodos habet. Habet `move` ex `Walk`. Habet `dive` ex `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Hunc modum partes coniungendi _compositionem_ appellamus. Classem ex pluribus portionibus agendi rationis separatis aedificas. Hoc saepe plus libertatis dat quam una catena hereditatis. Classis exacte eas facultates sumit quibus eget. Nihil amplius sumit.

{% include nav.html %}
