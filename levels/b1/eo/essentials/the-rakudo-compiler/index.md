---
title: La kompililo Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** estas la referenca realigo de Raku: la ĉefa, norma kompililo. Ĉi tiu kurso uzas ĝin. Hodiaŭ ĝi estas la plej kompleta maniero ruli Raku. Ĝi estas ankaŭ bone provita en vera laboro. Do kiam oni diras «la kompililo de Raku», oni kutime celas Rakudo.

Rakudo mem estas plejparte skribita en Raku. Pli malgranda lingvo, NQP («Not Quite Perl»), helpas konstrui ĝin. Via programo estas kompilita al bajtkodo kaj rulas sur virtuala maŝino nomata **MoarVM**. Vi ricevas MoarVM aŭtomate, kiam vi instalas Rakudo. Rakudo provas kovri la tutan lingvon. Do ĝi estas la plej sekura elekto, se ĉiu parto de Raku devas funkcii.

Rakudo subtenas Raku 6.d. Novaj eldonoj aperas ofte, do korektoj kaj novaj funkcioj atingas vin rapide.

## La virtuala maŝino

Defaŭlte, Rakudo rulas sur MoarVM, virtuala maŝino farita speciale por Raku. La dezajno ne ligas Rakudo al unu maŝino. Oni ankaŭ povas konstrui ĝin super aliaj virtualaj maŝinoj. Sed MoarVM estas la norma, bone subtenata elekto. Ĉi tiu kurso supozas, ke vi uzas ĝin. Jen la ĉefa diferenco kompare kun [Raku++](/eo/essentials/the-rakupp-compiler). Raku++ estas skribita en C++ kaj ne bezonas propran virtualan maŝinon.

## Fontkodo kaj ligiloj

Rakudo estas malfermitkoda, kaj ĉiu povas sekvi ĝian disvolvadon:

* [rakudo.org](https://rakudo.org)
* [Rakudo en GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
