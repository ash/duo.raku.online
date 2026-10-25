---
title: '`if` kaj `unless` kiel modifiloj de deklaroj'
---

{% include menu.html %}

Kelkfoje simpla deklaro dependas de kondiĉo. Raku havas tre facilan manieron skribi tion. Vi ne bezonas apartan blokon de kodo. Simple metu `if` aŭ `unless` tuj post la deklaro. En Raku, tiuj nomiĝas _deklaraj modifiloj_.

```raku
say 'Bonan posttagmezon' if $hours > 12;

say 'Ĉiuj sistemoj funkcias' unless $broken;
```

{% include nav.html %}
