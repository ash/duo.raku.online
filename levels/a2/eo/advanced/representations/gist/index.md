---
title: 'La metodo `.gist`'
---

{% include menu.html %}

La metodo `.gist` redonas **homlegeblan** formon de valoro. Ĝi estas la formo, kiun vi volas *legi*. `say` presas ĝuste ĉi tiun formon. `note` ankaŭ presas ĝin. Ili vokas `.gist` sur ĉiu argumento.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Por simplaj valoroj, la gist estas simple la valoro. Iuj datumoj havas plurajn partojn. Por tiaj datumoj, `.gist` aldonas iom da formatado. Tiam vi ankoraŭ facile legas la strukturon:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Tipobjekto estas valoro. Ĝi reprezentas la tipon mem. Ĝia gist estas la nomo de la tipo en krampoj. Do vi facile vidas ĝin en la eligo:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
