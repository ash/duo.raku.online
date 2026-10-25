---
title: La interpretilo mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** estas tria realigo de Raku, verkita en **Rust** de Tokuhiro Matsuno. Same kiel Rakudo, ĝi kompilas vian programon al bajtkodo kaj rulas ĝin sur virtuala maŝino. Sed ĉi tiu virtuala maŝino ne estas MoarVM. Ĝi estas la propra maŝino de mutsu, enkonstruita en la ruleblan dosieron `mutsu`.

mutsu subtenas Raku 6.d kaj ankoraŭ aktive evoluas. Ĝia aŭtoro malferme diras, ke ĝi ankoraŭ ne estas preta por veraj projektoj. Sed ĝi jam trapasas preskaŭ ĉiujn testodosierojn de Roast. Do preskaŭ ĉiuj programoj de ĉi tiu kurso rulas sur ĝi sen ŝanĝoj.

Unu breĉo gravas, dum vi lernas: kelkaj kompiltempaj kontroloj ankoraŭ mankas. La plej videbla, ĉe versio 0.24.0, estas ĉi tiu. Imagu, ke vi forgesas deklari variablon. Rakudo kaj Raku++ raportas ĝin antaŭ ol la programo ruliĝas. Sed mutsu ne faras tion. Kiam la kurso montras tian eraron, provu tiun ekzemplon per Rakudo aŭ Raku++.

## Raku en la retumilo

mutsu povas ankaŭ esti kompilita al WebAssembly. Tiam ĝi rulas ene de retpaĝo. Ĝia retejo, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), uzas tion en pluraj manieroj. Ĝi havas enkondukon al Raku en la angla kaj la japana. Estas ankaŭ praktika lernilo. Kaj estas provejo, kie vi povas ruli Raku sen instali ion ajn. Ĉio en tiuj paĝoj rulas mutsu mem.

## Moduloj

mutsu venas kun sia propra kopio de la pakaĵadministrilo zef, nomata `mzef`. Do vi povas instali Raku-modulojn por ĝi laŭ la kutima maniero. Simple tajpu `mzef install` kaj la nomon de la modulo.

## Fontkodo

mutsu estas malfermitkoda. Vi povas trovi ĝin ĉe [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Eldonaj binaraĵoj kaj konstruinstrukcioj ankaŭ estas tie.

{% include nav.html %}
