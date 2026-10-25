---
title: Raku, Rakudo, Raku++ kaj mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** estas la nomo de la programlingvo. **Kompililo** estas la programo, kiu legas vian kodon kaj rulas ĝin. Raku ne estas ligita al nur unu kompililo. Ĉi tiu kurso uzas **Rakudo**, kiu ekzistas jam de multaj jaroj. Ekzistas ankaŭ pli novaj: **Raku++** kaj **mutsu**.

## Pli ol unu kompililo

La dezajno de Raku ne diras, kiun kompililon vi devas uzi. Ĝiaj dezajnaj dokumentoj venas kun aro da testoj nomata Roast. Iu ajn povas verki kompililon. Se ĝi trapasas tiujn testojn, ĝi estas kompililo de Raku.

Longan tempon, Rakudo estis la sola kompleta kaj stabila kompililo. Nun tio ne plu estas vera. En julio 2026 aperis dua kompililo: **Raku++**, verkita en C++. Ĝia rulebla dosiero nomiĝas `rakupp`. Versio 5.4.1 trapasas la tutan testaron Roast. Ĝi ankaŭ ekfunkcias surprize rapide. Ĉi tiu kurso uzas Rakudo por siaj ekzemploj. Sed tio, kion vi lernas, estas la lingvo Raku mem. Preskaŭ ĉio el ĝi rulas ankaŭ sur Raku++ sen ŝanĝoj.

Ekzistas ankaŭ tria realigo, **mutsu**. Ĝi estas interpretilo, verkita en Rust de Tokuhiro Matsuno. Ĝi kompilas Raku al bajtkodo por sia propra virtuala maŝino. Ĝi ankaŭ rulas ene de retumilo per WebAssembly. Ĝia retejo havas lernilon pri Raku kaj provejon, konstruitajn sur ĝi. La projekto ankoraŭ aktive evoluas. Ĝia aŭtoro diras, ke ĝi ankoraŭ ne estas preta por veraj projektoj. Sed ĝi jam trapasas preskaŭ ĉiujn testodosierojn de Roast.

La sekvaj paĝoj rigardas la tri unu post la alia: Rakudo, Raku++ kaj mutsu. Ili ankaŭ klarigas, kiel instali ilin.

## Eksteraj ligiloj

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ ĉe GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
