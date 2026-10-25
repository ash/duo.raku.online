---
title: Kvizo — Listo kaj skalara kontraŭ listo kaj tabelo
---

{% include menu.html %}

Rigardu la asignojn sube. Ĉe la dekstra flanko estas listoj. Kian tipon de objektoj tenas la variabloj?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Elektu la ĝustajn respondojn:

{:.quiz-select}
(Listo) | La tipo de `$x` estas&nbsp; (: (Aro), (Int), (Listo) :)
(Aro) | La tipo de `@x` estas&nbsp; (: (Aro), (Int), (Listo) :)

## 2*

Ĉi tiu kazo estas pli malfacila. Eble vi ne komprenas ĝin nun. Ne zorgu pri tio. La dua parto de la kurso revenos al ĉi tiu temo.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Elektu la ĝustajn respondojn:

{:.quiz-select}
(Aro) | La tipo de `$x` estas&nbsp; (: (Aro), (Int), (Listo) :)
(Aro) | La tipo de `@x` estas&nbsp; (: (Aro), (Int), (Listo) :)

{% include quiz.html %}

{% include nav.html %}
