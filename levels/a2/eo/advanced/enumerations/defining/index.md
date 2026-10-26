---
title: Difini enumeracion
translations_gpt:
---

{% include menu.html %}

Por deklari enumeracion, skribu la ŝlosilvorton `enum`. Poste skribu nomon kaj la liston de nomoj por la konstantoj:

```raku
enum Colour <red green blue>;
```

Tio faras novan tipon, `Colour`. Ĝi ankaŭ faras tri konstantojn: `red`, `green` kaj `blue`. Vi povas uzi konstanton nur per ĝia nomo:

```raku
say red;   # red
say green; # green
```

Ĉiu nomo havas nombron malantaŭ si. Raku donas la nombrojn por vi. Ĝi komencas de nulo kaj sekvas la ordon de via listo. Do `red` estas `0`, `green` estas `1`, kaj `blue` estas `2`. La valoroj havas ordon. Do vi povas kompari la konstantojn:

```raku
say red < blue; # True
```

Variablo povas havi la enumeracion kiel sian tipon. Tiam la variablo prenas nur ĉi tiujn konstantojn:

```raku
my Colour $c = green;
say $c; # green
```

Konstanto kaj io alia povas havi la saman nomon. Tiam skribu la nomon de la enumeracio kaj `::` antaŭ la konstanto. Tio ĉiam funkcias:

```raku
say Colour::red; # red
```

Enumeracio kunmetas rilatajn konstantojn. Ĝi donas al ili nomon kaj tipon. Kodo kun ĉi tiuj konstantoj estas multe pli klara ol kodo kun nur nombroj. La sekva temo estas pri [la nombroj malantaŭ la nomoj](/eo/advanced/enumerations/values-and-keys).

{% include nav.html %}
