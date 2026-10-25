---
title: La interpretilo mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** estas tria realigo de Raku. Tokuhiro Matsuno verkis ĝin en **Rust**. Kiel Rakudo, ĝi kompilas vian programon al bajtkodo. Poste ĝi rulas la bajtkodon sur virtuala maŝino. Sed ĉi tiu maŝino ne estas MoarVM. Ĝi estas la propra maŝino de mutsu. Ĝi estas ene de la programdosiero `mutsu`.

mutsu subtenas Raku 6.d. Ĝia aŭtoro ankoraŭ multe laboras pri ĝi. Ĝi ankoraŭ ne estas preta por veraj projektoj. La aŭtoro diras tion klare. Sed ĝi jam trapasas preskaŭ ĉiujn testodosierojn de Roast. Do preskaŭ ĉiuj programoj en ĉi tiu kurso funkcias sur ĝi senŝanĝe.

Unu mankanta parto gravas, dum vi lernas. Kelkaj kompiltempaj kontroloj ankoraŭ ne ekzistas. Ĉi tiuj kontroloj okazas antaŭ ol la programo ruliĝas. Jen la plej videbla kazo, en versio 0.24.0. Eble vi forgesas deklari variablon. Rakudo kaj Raku++ raportas tion antaŭ ol la programo ruliĝas. Sed mutsu ne faras tion. Ĉu la kurso montras tian erarmesaĝon? Tiam provu tiun ekzemplon per unu el la aliaj du kompililoj.

## Raku en la retumilo

Vi ankaŭ povas kompili mutsu al WebAssembly. Tiam ĝi rulas ene de retpaĝo. Ĝia retejo, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), uzas tion. Ĝi havas enkondukon al Raku en la angla kaj la japana. Ĝi ankaŭ havas lernilon. En ĝi, vi mem provas aferojn. Kaj ĝi havas provejon. Tie vi povas ruli Raku sen instali ion ajn. Ĉiuj ĉi tiuj paĝoj rulas mutsu mem.

## Moduloj

mutsu venas kun sia propra kopio de la pakaĵadministrilo zef. Ĉi tiu kopio nomiĝas `mzef`. Do vi povas instali Raku-modulojn por mutsu kiel kutime. Tajpu `mzef install` kaj poste la nomon de la modulo.

## Fontkodo

mutsu estas malfermitkoda. Vi povas trovi ĝin ĉe [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). La paĝo ankaŭ havas eldonajn binaraĵojn kaj instrukciojn por konstrui ĝin.

{% include nav.html %}
