---
title: La kompililo Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** estas la ĉefa kompililo de Raku. Ĉi tiu kurso uzas ĝin. Hodiaŭ, Rakudo estas la plej kompleta maniero ruli Raku. Ĝi estas ankaŭ tre bone provita en vera laboro. Do kiam oni diras «la kompililo de Raku», oni kutime celas Rakudo.

Rakudo mem estas skribita plejparte en Raku. Pli malgranda lingvo helpas konstrui ĝin. Ĉi tiu lingvo estas NQP, mallongigo de «Not Quite Perl». Rakudo kompilas vian programon al bajtkodo. Poste ĝi rulas la bajtkodon sur virtuala maŝino nomata **MoarVM**. Kiam vi instalas Rakudo, vi ricevas ankaŭ MoarVM. Rakudo provas kovri la tutan lingvon. Ĉu vi bezonas, ke ĉiu parto de Raku funkciu? Tiam Rakudo estas la plej sekura elekto.

Rakudo subtenas Raku 6.d. Novaj versioj de Rakudo aperas ofte. Do vi ricevas korektojn kaj novajn funkciojn rapide.

## La virtuala maŝino

Normale, Rakudo rulas sur MoarVM. MoarVM estas virtuala maŝino farita nur por Raku. Sed Rakudo povas ankaŭ funkcii kun aliaj virtualaj maŝinoj. Vi povas konstrui ĝin sur ili. Tamen MoarVM estas la norma elekto. Ĝi havas bonan subtenon. Ĉi tiu kurso atendas, ke vi uzas MoarVM. Jen la ĉefa diferenco inter Rakudo kaj [Raku++](/eo/essentials/the-rakupp-compiler). Raku++ estas skribita en C++. Ĝi ne bezonas propran virtualan maŝinon.

## Fontkodo kaj ligiloj

Rakudo estas malfermitkoda. Ĉiu povas rigardi ĝian disvolvadon:

* [rakudo.org](https://rakudo.org)
* [Rakudo en GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
