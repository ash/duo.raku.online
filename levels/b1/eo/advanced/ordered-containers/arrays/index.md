---
title: Tabeloj
translations_gpt:
---

{% include menu.html %}

Tabelo estas ordigita ujo, kaj ĝiaj elementoj estas ankaŭ skalaraj ujoj.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

La sigelo `@` signifas, ke tia variablo kondutas kiel objekto `Positional`. Tio permesas al vi uzi subskribojn por legi unuopajn elementojn:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Ĉiu elemento estas skalara ujo, do vi povas atribui novan valoron al ĝi. Vi faras tion same kiel kun aparta skalara variablo:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Vi ankaŭ povas atribui valoron de alia tipo, ekzemple:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Jen kio faras tabelojn _ŝanĝeblaj_, tio estas, vi povas ŝanĝi ilin. Ĉiu fako estas ujo, kiu povas ricevi novan valoron. En la sekva temo, vi vidos, ke [listoj](/eo/advanced/ordered-containers/lists) kondutas alie.

{% include nav.html %}
