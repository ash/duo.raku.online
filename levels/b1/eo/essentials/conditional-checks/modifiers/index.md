---
title: '`if` kaj `unless` kiel modifiloj de deklaroj'
---

{% include menu.html %}

Kelkfoje vi volas, ke simpla deklaro ruliĝu nur kun certa kondiĉo. Por tio, Raku havas tre praktikan solvon. Vi ne bezonas krei apartan blokon de kodo. Simple metu `if` aŭ `unless` tuj post la deklaro. En Raku, tiaj konstruoj nomiĝas _deklaraj modifiloj_.

```raku
say 'Bonan posttagmezon' if $hours > 12;

say 'Ĉiuj sistemoj funkcias' unless $broken;
```

{% include nav.html %}
