---
title: 'La metodo `.raku`'
---

{% include menu.html %}

La tria metodo estas `.raku`. Ĝi redonas ĉenon kun **kodosimila** formo de la valoro. En la plej bona kazo, vi povas enmeti ĉi tiun ĉenon en programon. Tiam vi ricevas la saman valoron denove. Ĉiu valoro en Raku havas ĉi tiun metodon.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Rigardu la ĉenon `'Raku'`. Ĝi revenas kun citiloj ĉirkaŭ ĝi. Do nombro kaj ĉeno aspektas malsame. Vi bezonas tiajn detalojn, kiam vi sencimigas programon.

La metodo ankaŭ funkcias por datumoj kun multaj partoj. Ĝi funkcias ankaŭ por nestitaj datumoj, kun unu strukturo en alia:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` redonas normalan ĉenon. Do vi povas uzi ĝin en ĉiu loko, kiu bezonas ĉenon. Ekzemple, vi povas meti ĝin en ĉenon en duoblaj citiloj:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Uzu `.raku`, kiam vi bezonas ĉi tiun formon kiel ĉenon. Tiam vi povas aldoni ĝin al viaj propraj mesaĝoj. Tre baldaŭ, vi renkontos `dd`. Ĝi estas ilo en Rakudo. Ĝi presas la saman specon de formo por vi, en unu paŝo.

{% include nav.html %}
