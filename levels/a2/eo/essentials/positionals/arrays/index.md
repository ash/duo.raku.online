---
title: Tabeloj
---

{% include menu.html %}

Tabeloj estas agregitaj datumtipoj. Tio signifas, ke tabelo povas teni pli ol unu valoron. Per tio tabeloj diferencas de [skalaj elementoj](/eo/essentials/scalar-variables). Vi povas indeksi, aŭ _subskribi_, la elementojn de tabelo. Alivorte, ĉiu elemento havas pozicion. Tial ni nomas ĉi tiun specon de datumoj poziciaj.

Tabelaj variabloj havas alian sigelon: `@`. La reguloj por la nomo estas la samaj kiel [por skaloj](/eo/essentials/scalar-variables/identifiers/).

```raku
my @urboj;
```

Nun ni havas tabelon. Ĝia nomo estas `@urboj`. Vi povas meti kelkajn valorojn en ĝin:

```raku
@urboj = 'Parizo', 'Romo', 'Berlino';
```

Vi ankaŭ povas krei la tabelon kun valoroj en ĝi:

```raku
my @urboj = 'Parizo', 'Romo', 'Berlino';
```

## Indeksado

Por preni unu eron de tabelo, uzu paron de krampoj. Metu ilin post la nomon de la variablo:

```raku
say @urboj[1];
```

Notu, ke la sigelo ne ŝanĝiĝas. Ĝi ĉiam estas `@`. Raku nombras la elementojn ekde nulo. Do en nia ekzemplo, `@urboj[1]` estas `'Romo'`.

Tabeloj estas ŝanĝeblaj. Tio signifas, ke vi povas ŝanĝi ilin. Por ŝanĝi eron, simple asignu novan valoron al ĝi:

```raku
@urboj[0] = 'Romo';
@urboj[1] = 'Parizo';
```

Post tio, la deklaro `say @urboj[1]` presas la novan valoron, `'Parizo'`.

## Grandeco

Kio estas la longo de tabelo? Ĝi estas la nombro de ĝiaj elementoj. Por ricevi ĝin, uzu la metodon `elems`:

```raku
say @urboj.elems; # 3
```

Foje vi uzas tabelon, kie Raku bezonas nombron. Tiam vi ricevas la grandecon de la tabelo:

```raku
say +@urboj; # 3
```

Ĉi tie, la [`+` prefiksa operatoro](/eo/essentials/coercion/prefixes) bezonas nombron de sia argumento. Do la rezulto de `+@urboj` estas `3`.

{% include nav.html %}
