---
title: Subprogramoj kaj metodoj
translations_gpt:
---

{% include menu.html %}

Nun vi konas du manierojn kunigi kelkajn agojn. Unu estas _subrutino_. La alia estas _metodo_. Ili aspektas similaj. Sed vi uzas ilin malsame.

Subrutino staras sola. Ĝi apartenas al nenio. Vi vokas ĝin per ĝia nomo. Vi transdonas al ĝi ĉion, kion ĝi bezonas, kiel argumentojn:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Metodo apartenas al klaso. Ĝi estas kiel funkcio ene de la klaso. Vi vokas metodon sur objekto, per punkto. Objekto estas valoro de la klaso. La metodo povas uzi la datumojn de sia objekto. Por tio, ĝi havas `self` kaj la atributajn atingilojn. Do vi ne transdonas ĉi tiujn datumojn al ĝi:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Ambaŭ donas la saman nombron. La diferenco estas, de kie venas la datumoj. La subrutino ricevas la radiuson kiel argumenton. La metodo legas la radiuson el sia objekto. Tio estas la objekto, sur kiu vi vokas ĝin.

Jen simpla regulo. Ĉu la kodo staras sola kaj laboras nur kun siaj argumentoj? Tiam uzu subrutinon. Ĉu la kodo apartenas al objekto kaj laboras kun ĝiaj datumoj? Tiam uzu metodon. Ĉu la kodo apartenas al klaso, sed ne al unu objekto? Tiam uzu klasmetodojn.

{% include nav.html %}
