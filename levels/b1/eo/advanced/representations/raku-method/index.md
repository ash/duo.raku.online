---
title: 'La metodo `.raku`'
---

{% include menu.html %}

La tria reprezenta metodo estas `.raku`. Ĝi redonas ĉenon kun **kodosimila** reprezento de la valoro. Ideale, vi povus enmeti ĉi tiun ĉenon en programon kaj ricevi la saman valoron reen. Ĉiu valoro en Raku havas ĉi tiun metodon.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Notu, ke la ĉeno `'Raku'` revenas kun citiloj ĉirkaŭ ĝi. Do vi povas rapide vidi la diferencon inter nombro kaj ĉeno. Ĝuste tian detalon vi bezonas, kiam vi sencimigas.

La metodo ankaŭ funkcias por kunmetitaj datumoj, eĉ por nestitaj strukturoj:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Ĉar `.raku` redonas normalan ĉenon, vi povas uzi ĝin ĉie, kie oni atendas ĉenon. Ekzemple, vi povas meti ĝin en ĉenon en duoblaj citiloj:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Uzu `.raku`, kiam vi bezonas la kodosimilan reprezenton kiel ĉenon. Tiam vi povas kombini ĝin kun viaj propraj mesaĝoj. Tre baldaŭ, ni prezentos `dd`. Ĉi tiu Rakudo-ilo presas la saman specon de reprezento por vi en unu paŝo.

{% include nav.html %}
