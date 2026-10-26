---
title: Complanatio et itemisatio
translations_gpt:
---

{% include menu.html %}

Unum ordinem intra alterum ponere potes. Raku elementa eorum per se _non_ iungit. Specta hoc programma:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Ordo `@c` solum duo elementa habet: ordines `@a` et `@b`. Raku quemque continentem ut unum elementum servat. Elementa eius in ordinem exteriorem non eunt. Idem est cum ordine inter alios valores:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Unam seriem planam vis? Tum eam cum subroutina `flat` pete:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisatio

Interdum contrarium vis. Continentem integrum servare vis, etiam intra `flat`. Constructio `$(...)` argumentum suum _itemisat_. Hoc significat: resultatum ut unum elementum notat. Compara exemplum prius cum hoc:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Hic `$(@a)` ordinem `@a` ut unum elementum servat. Sed `@b` adhuc planus fit. Duos valores suos dat. Haec est iterum idea sigilli `$`. Signum `$` significat “hoc ut rem unam tracta”.

{% include nav.html %}
