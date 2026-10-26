---
title: 'La metodo `.Str`'
---

{% include menu.html %}

La metodo `.Str` redonas la **simplan ĉenan** formon de valoro. Raku vokas ĝin, kiam ĝi bezonas valoron kiel ĉenon. Tio nomiĝas *ĉenkonteksto*. `print` kaj `put` vokas ĝin. Ankaŭ la operatoro `~` vokas ĝin. Ĉi tiu operatoro kunigas ĉenojn. Ĝi ankaŭ funkcias por valoroj ene de ĉenoj en duoblaj citiloj.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Notu, ke la tabelo revenas **sen la krampoj**. Ĝiaj elementoj estas simple kunigitaj per spacoj. Ĉi tie vi vidas la diferencon de [`.gist`](../gist). La metodo `.gist` konservas la krampojn. Komparu la du metodojn unu apud la alia:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Valoro ene de ĉeno en duoblaj citiloj uzas `.Str`. Do tabelo ene de ĉeno aperas en la simpla maniero:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
