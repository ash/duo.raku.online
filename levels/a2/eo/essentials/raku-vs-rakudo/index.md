---
title: Raku, Rakudo, Raku++ kaj mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** estas la nomo de la programlingvo. **Kompililo** estas programo. Ĝi legas vian kodon kaj rulas ĝin. Raku povas havi pli ol unu kompililon. Ĉi tiu kurso uzas **Rakudo**, la pli malnovan kaj bone konatan. Ekzistas ankaŭ pli novaj: **Raku++** kaj **mutsu**.

## Pli ol unu kompililo

La dezajno de Raku ne diras, kiun kompililon uzi. La dezajnaj dokumentoj venas kun aro da testoj. Ĉi tiu aro nomiĝas Roast. Iu ajn povas verki kompililon. Se ĝi trapasas ĉi tiujn testojn, ĝi estas kompililo de Raku.

Longan tempon, Rakudo estis la sola kompleta kaj stabila kompililo. Nun tio ne estas vera. En julio 2026, aperis dua kompililo: **Raku++**. Ĝia aŭtoro verkis ĝin en C++. Ĝia programdosiero nomiĝas `rakupp`. Versio 5.4.1 trapasas ĉiujn testojn de Roast. Ĝi ankaŭ startas tre rapide. Ĉi tiu kurso uzas Rakudo por siaj ekzemploj. Sed vi lernas la lingvon Raku mem. Preskaŭ ĉio el ĝi rulas ankaŭ sur Raku++, sen ŝanĝoj.

Ekzistas ankaŭ tria: **mutsu**. Ĝi estas interpretilo. Tokuhiro Matsuno verkis ĝin en Rust. Ĝi kompilas Raku-kodon al bajtkodo. Poste ĝia propra virtuala maŝino rulas ĉi tiun bajtkodon. Vi ankaŭ povas ruli ĝin en retumilo, per WebAssembly. Ĝia retejo havas lernilon pri Raku kaj provejon. Ambaŭ funkcias per mutsu. La aŭtoro ankoraŭ multe laboras pri ĝi. La aŭtoro diras, ke ĝi ankoraŭ ne estas preta por veraj projektoj. Sed ĝi jam trapasas preskaŭ ĉiujn testodosierojn de Roast.

La sekvaj paĝoj montras ĉiun el la tri: Rakudo, Raku++ kaj mutsu. Ili ankaŭ montras, kiel instali ilin.

## Eksteraj ligiloj

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ ĉe GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
