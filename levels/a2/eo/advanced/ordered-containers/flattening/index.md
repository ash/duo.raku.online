---
title: Platigo kaj ero-igo
translations_gpt:
---

{% include menu.html %}

Vi povas meti unu tabelon en alian. Raku _ne_ kunigas iliajn elementojn per si mem. Rigardu ĉi tiun programon:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

La tabelo `@c` havas nur du elementojn: la tabelojn `@a` kaj `@b`. Raku tenas ĉiun ujon kiel unu eron. Ĝiaj elementoj ne iras en la eksteran tabelon. Same estas kun tabelo inter aliaj valoroj:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Ĉu vi volas unu platan sekvencon? Tiam petu ĝin per la rutino `flat`:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Ero-igo

Foje vi volas la malon. Vi volas teni ujon en unu peco, eĉ ene de `flat`. La konstruo `$(...)` _ero-igas_ sian argumenton. Tio signifas, ke ĝi markas la rezulton kiel unu solan eron. Komparu la antaŭan ekzemplon kun ĉi tiu:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Ĉi tie, `$(@a)` tenas `@a` kiel unu elementon. Sed `@b` ankoraŭ fariĝas plata. Ĝi donas siajn du valorojn. Jen denove la ideo de la sigelo `$`. `$` signifas «traktu ĉi tion kiel unu solan aĵon».

{% include nav.html %}
