---
title: Complanatio et itemisatio
translations_gpt:
---

{% include menu.html %}

Si unum ordinem in alterum ponis, Raku elementa eorum per se _non_ confundit. Specta hoc programma:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Ordo `@c` solum duo elementa habet, ordines `@a` et `@b`. Raku quemque continentem ut unum elementum servat. Contenta eius in ordinem exteriorem non effundit. Idem accidit cum ordinem inter alios valores ponis:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Si revera unam seriem planam vis, eam directe cum subroutina `flat` pete:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisatio

Interdum contrarium vis. Continentem ab explanatione protegere vis, etiam intra `flat`. Constructio `$(...)` argumentum suum _itemisat_. Hoc significat eam resultatum ut unum elementum notare. Compara exemplum praecedens cum hoc:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Hic `$(@a)` ordinem `@a` ut unum elementum servat. Sed `@b` adhuc in duos valores suos explanatur. Haec est iterum idea sigilli `$`. Signum `$` significat “hoc ut rem unam tracta”.

{% include nav.html %}
