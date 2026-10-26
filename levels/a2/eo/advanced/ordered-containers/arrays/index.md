---
title: Tabeloj
translations_gpt:
---

{% include menu.html %}

Tabelo estas ordigita ujo. Ĉiu elemento de tabelo estas ankaŭ skalara ujo.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

La sigelo `@` montras, ke la variablo funkcias kiel objekto `Positional`. Do vi povas preni ĉiun elementon laŭ ĝia indekso:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Ĉiu elemento estas skalara ujo. Do vi povas atribui novan valoron al ĝi. Ĝi funkcias same kiel normala skalara variablo:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Vi ankaŭ povas atribui valoron de alia tipo. Ekzemple:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Tial tabeloj estas _ŝanĝeblaj_. Tio signifas, ke vi povas ŝanĝi ilin. Ĉiu loko en tabelo estas ujo. Ĝi povas ricevi novan valoron. [Listoj](/eo/advanced/ordered-containers/lists) estas malsamaj. Vi vidos tion en la sekva temo.

{% include nav.html %}
