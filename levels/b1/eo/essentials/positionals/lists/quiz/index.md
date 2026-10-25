---
title: Kvizo — Listo kaj skalara kontraŭ listo kaj tabelo
---

{% include menu.html %}

En la asignoj sube, estas listoj ĉe la dekstra flanko. Kian tipon de objektoj tenas la variabloj?

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

Jen pli malfacila kazo. Ne zorgu, se vi ankoraŭ ne komprenas ĝin. Ni revenos al ĉi tiu temo en la dua parto de la kurso.

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
