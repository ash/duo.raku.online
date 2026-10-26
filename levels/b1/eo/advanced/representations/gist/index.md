---
title: 'La metodo `.gist`'
---

{% include menu.html %}

La metodo `.gist` redonas **homlegeblan** reprezenton de valoro. Tio estas la formo, kiun vi volus *legi*. `say` kaj `note` presas ĝuste tion, ĉar ili vokas `.gist` sur ĉiu argumento.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Por simplaj valoroj, la gist estas simple la valoro mem. Por kunmetitaj datumoj, `.gist` aldonas iom da formatado, por ke la strukturo estu facile legebla:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Tipobjekto estas valoro, kiu reprezentas la tipon mem. Ĝia gist estas ĝia nomo en krampoj. Tio faciligas rimarki ĝin en la eligo:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
