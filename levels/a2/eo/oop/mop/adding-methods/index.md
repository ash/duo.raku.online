---
title: Aldoni metodojn dum la rulado
translations_gpt:
---

{% include menu.html %}

La MOP ne estas nur por rigardi en tipojn. Ĝi ankaŭ povas **ŝanĝi** tipon dum la programo ruliĝas. La metametodo `.^add_method` aldonas novan metodon al klaso:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

La klaso `Empty` havas tute neniujn metodojn. Poste `Empty.^add_method('greet', …)` aldonas metodon al ĝi. Ĝia nomo estas `greet`. La metodo mem estas anonima `method { … }`. Anonima signifas, ke ĝi ne havas nomon. Post tio, vi povas voki `.greet` sur ĉiu objekto `Empty`. Ĝi funkcias, kvazaŭ vi skribus la metodon en la klaso.

Ĉi tio estas vera meta-programado. Meta-programado signifas kodon, kiu laboras kun kodo. Ĉi tie, ni petas la metaobjekton de `Empty` kreskigi novan metodon. La sama protokolo estas malantaŭ aferoj, kiujn vi jam uzas. Jen la ideo. Vi skribas `class`, `role`, `has` aŭ `method`. Tiam la kompililo konstruas vian tipon por vi. Ĝi uzas MOP-metodojn kiel `.^add_method` kaj `.^add_attribute`.

Ni havas kialon diri «la ideo». Ĉi tio estas modelo de la lingvo. Ĝi ne estas promeso pri iu certa kompililo. La objekta sistemo estas *difinita* per la MOP. Realigo estas kompililo por Raku. Ĉu ĝi vere sendas ĉiun deklaron tra ĉi tiuj metametodoj? Kaj ĉu vi povas vidi tion? Ĉiu realigo mem decidas tion. Vi ankaŭ povas mem *voki* ĉi tiujn metametodojn. Pro la sama kialo, la rezulto dependas de la realigo. Kompililoj povas doni al vi malsamajn metametodojn. Ĉi tiuj metodoj ankaŭ povas funkcii en malsamaj manieroj. Kodo povas uzi `.^add_method` kaj similajn metodojn. Tia kodo eble ne ruliĝas same sur ĉiu Raku.

Vi povas aldoni metodojn dum la programo ruliĝas. Ĉi tio estas potenca ilo. Sed vi malofte bezonas ĝin. La plej multaj programoj neniam uzas ĝin. Sed ĝi faras la objektan sistemon de Raku malfermita. La reguloj de klasoj ankaŭ estas skribitaj per la MOP. Do vi povas aldoni al ĉi tiuj reguloj. Por ĉiutaga kodo, vi bezonas alian parton de la MOP. Vi vidis ĝin en la antaŭa temo. Ili estas la metametodoj, kiuj rigardas en tipojn.

{% include nav.html %}
