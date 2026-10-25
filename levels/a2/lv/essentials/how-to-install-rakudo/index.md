---
title: Kā instalēt Rakudo
translations_gpt:
---

{% include menu.html %}

Lai palaistu Raku programmu, jums vajag kompilatoru. Jums tas vispirms jāuzstāda. Šis kurss lieto Rakudo. Ir arī [Raku++](/lv/essentials/the-rakupp-compiler) un [mutsu](/lv/essentials/the-mutsu-interpreter). Tos jūs uzstādāt atsevišķi. Izlasiet [Kā uzstādīt Raku++](/lv/essentials/how-to-install-rakupp) un [Kā uzstādīt mutsu](/lv/essentials/how-to-install-mutsu). Atveriet [Rakudo vietni](https://rakudo.org). Tur jūs varat lejupielādēt pareizo versiju savai operētājsistēmai.

## Avoti

Lejupielādējiet uzstādītāju savai sistēmai vietnē [rakudo.org/downloads](https://rakudo.org/downloads). Ir versijas visām galvenajām operētājsistēmām: Windows, Mac OS un Linux. Ir arī pirmkods. To jūs varat kompilēt paši.

## Docker attēli

Rakudo var dabūt arī kā docker attēlu. Ar to jūs varat palaist programmas. Jūs varat arī izmēģināt mazus skriptus REPL čaulā. Visas norādes ir vietnē [github.com/Raku/docker](https://github.com/Raku/docker).

## Versiju numuri

Rakudo versijas numuram ir divas daļas. Tās ir izlaiduma gads un mēnesis. Tāpēc jūs viegli redzat, cik jauns ir jūsu kompilators. Izpildiet šo komandu, lai redzētu tā versijas numuru:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Šeit jūs redzat trīs versiju numurus. Pirmais ir paša Rakudo versija: `v2026.06`. Tālāk ir Raku valodas versija: `v6.d`. Pagaidām katrs valodas atjauninājums saņem nākamo burtu. Šis burts ir versijas mazākā jeb sīkā daļa. Piemēram, nākamā ir `v6.e`, un tā tālāk. Beigās jūs redzat virtuālās mašīnas nosaukumu. Šis kompilators lieto MoarVM versiju `2026.06`.

{% include nav.html %}
