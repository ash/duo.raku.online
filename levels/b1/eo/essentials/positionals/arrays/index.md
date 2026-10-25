---
title: Tabeloj
---

{% include menu.html %}

Tabeloj estas agregitaj datumtipoj, kio signifas, ke ili povas teni pli ol unu valoron. Per tio ili diferencas de [skalaj elementoj](/eo/essentials/scalar-variables). La elementoj de tabelo povas esti indeksitaj (aŭ _subskribitaj_). Alivorte, ĉiu elemento havas pozicion. Tial datumoj de ĉi tiu speco havas la ĝeneralan nomon poziciaj.

Por tabelaj variabloj, estas alia sigelo: `@`. La reguloj por la nomo de la variablo estas la samaj kiel [por skaloj](/eo/essentials/scalar-variables/identifiers/).

```raku
my @urboj;
```

Nun ni kreis tabelon nomatan `@urboj`. Vi povas plenigi ĝin per kelkaj valoroj:

```raku
@urboj = 'Parizo', 'Romo', 'Berlino';
```

Vi ankaŭ povas doni la valorojn tuj, kiam vi kreas la tabelon:

```raku
my @urboj = 'Parizo', 'Romo', 'Berlino';
```

## Indeksado

Por preni unu eron de tabelo, aldonu paron de krampoj post ĝia nomo:

```raku
say @urboj[1];
```

Notu, ke la sigelo ĉiam restas la sama. Elementoj estas nombrataj ekde nulo, do en nia ekzemplo, la elemento `@urboj[1]` estas `'Romo'`.

Tabeloj estas ŝanĝeblaj, kio signifas, ke vi povas ŝanĝi ilin. Por ŝanĝi eron, simple asignu novan valoron al ĝi:

```raku
@urboj[0] = 'Romo';
@urboj[1] = 'Parizo';
```

Nun la deklaro `say @urboj[1]` presas la novan valoron, `'Parizo'`.

## Grandeco

La longo de tabelo estas la nombro de ĝiaj elementoj. Por ricevi la aktualan longon, uzu la metodon `elems`:

```raku
say @urboj.elems; # 3
```

Se tabelo aperas tie, kie oni atendas nombron, vi ricevas ĝian grandecon:

```raku
say +@urboj; # 3
```

Ĉi tie, la [`+` prefiksa operatoro](/eo/essentials/coercion/prefixes) bezonas nombron de sia argumento. Tial `+@urboj` donas `3`.

{% include nav.html %}
