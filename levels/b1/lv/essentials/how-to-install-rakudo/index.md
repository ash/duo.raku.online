---
title: Kā instalēt Rakudo
translations_gpt:
---

{% include menu.html %}

Lai izpildītu programmu Raku valodā, jums jāuzstāda kompilators. Šajā kursā lieto Rakudo. Pārējos divus, [Raku++](/lv/essentials/the-rakupp-compiler) un [mutsu](/lv/essentials/the-mutsu-interpreter), uzstāda atsevišķi. Skatiet [Kā uzstādīt Raku++](/lv/essentials/how-to-install-rakupp) un [Kā uzstādīt mutsu](/lv/essentials/how-to-install-mutsu). Apmeklējiet [Rakudo tīmekļa vietni](https://rakudo.org) un lejupielādējiet versiju savai operētājsistēmai.

## Avoti

Uzstādītāju savai sistēmai varat lejupielādēt vietnē [rakudo.org/downloads](https://rakudo.org/downloads). Ir versijas visām lielākajām operētājsistēmām: Windows, Mac OS un Linux. Varat arī paņemt pirmkodu un kompilēt to paši.

## Docker attēli

Rakudo ir pieejams arī kā docker attēls. To varat lietot programmu palaišanai. Tas der arī nelielu skriptu izmēģināšanai REPL čaulā. Visas norādes atradīsiet vietnē [github.com/Raku/docker](https://github.com/Raku/docker).

## Versiju numuri

Rakudo versijas numuram ir divas daļas: izlaiduma gads un mēnesis. Tā jūs viegli varat redzēt, cik jauns ir jūsu kompilators. Izpildiet šo komandu, lai redzētu tā versijas numuru:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Šeit jūs varat redzēt trīs versiju numurus. Pirmais ir paša Rakudo versija: `v2026.06`. Tad nāk Raku valodas versija: `v6.d`. Pagaidām atjauninājumi saņem nākamo burtu kā mazāko versiju. Piemēram, nākamā ir `v6.e`, un tā tālāk. Visbeidzot jūs redzat šī kompilatora virtuālās mašīnas nosaukumu: MoarVM versija `2026.06`.

{% include nav.html %}
