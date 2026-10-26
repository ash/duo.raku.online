---
title: 'La metodo `.Str`'
---

{% include menu.html %}

La metodo `.Str` redonas la **simplan ĉenan** formon de valoro. Raku vokas ĝin ĉiam, kiam ĝi uzas valoron en *ĉenkonteksto*. Tio okazas ĉe `print` kaj `put`, kaj ĉe la operatoro `~`, kiu kunigas ĉenojn. Tio okazas ankaŭ, kiam vi enmetas valoron en ĉenon en duoblaj citiloj.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Notu, ke la tabelo revenis **sen la krampoj**. Ĝiaj elementoj estas simple kunigitaj per spacoj. Tio estas la videbla diferenco de [`.gist`](../gist), kiu konservas la krampojn. Komparu ilin unu apud la alia:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Kiam vi enmetas tabelon en ĉenon, Raku uzas `.Str`. Do la tabelo aperas en la simpla maniero:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
