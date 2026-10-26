---
title: Difini enumeracion
translations_gpt:
---

{% include menu.html %}

Por deklari enumeracion, skribu la ŝlosilvorton `enum`, nomon kaj la liston de konstantaj nomoj:

```raku
enum Colour <red green blue>;
```

Nun ekzistas nova tipo, `Colour`, kun tri konstantoj: `red`, `green` kaj `blue`. Vi povas uzi ĉiun konstanton rekte per ĝia nomo:

```raku
say red;   # red
say green; # green
```

Malantaŭ ĉiu nomo estas nombro. Raku donas ĉi tiujn nombrojn aŭtomate, komencante de nulo, laŭ la ordo de via listo. Do `red` estas `0`, `green` estas `1` kaj `blue` estas `2`. Ĉar la valoroj havas ordon, vi povas kompari la konstantojn:

```raku
say red < blue; # True
```

Vi povas doni al variablo la enumeracion kiel tipon. Tiam ĝi akceptas nur tiujn konstantojn:

```raku
my Colour $c = green;
say $c; # green
```

La nomo de konstanto povas esti la sama kiel alia nomo en via programo. Tiam vi ĉiam povas atingi la konstanton per la nomo de la enumeracio kaj `::`:

```raku
say Colour::red; # red
```

Enumeracio donas al grupo de rilataj konstantoj nomon kaj tipon. Kodo, kiu uzas ilin, estas multe pli klara ol kodo kun simplaj nombroj. La sekva temo rigardas [la nombrojn malantaŭ la nomoj](/eo/advanced/enumerations/values-and-keys).

{% include nav.html %}
