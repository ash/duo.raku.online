---
title: Aldoni metodojn dum la rulado
translations_gpt:
---

{% include menu.html %}

Vi povas uzi la MOP ne nur por inspekti tipon. Ĝi ankaŭ povas **ŝanĝi** tipon dum la programo ruliĝas. La metametodo `.^add_method` aldonas novan metodon al klaso:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

La klaso `Empty` havas tute neniujn metodojn. Poste `Empty.^add_method('greet', …)` aldonas metodon nomatan `greet`, kiu estas donita kiel anonima `method { … }`. De tiam, ĉiu objekto `Empty` respondas al `.greet`. Ĝi funkcias ĝuste kvazaŭ vi skribus ĝin en la klaso.

Ĉi tio estas vera meta-programado. Ni petas la metaobjekton de `Empty` kreskigi novan metodon. La sama protokolo estas malantaŭ ecoj, kiujn vi jam uzis. Principe, ĝi funkcias jene. Kiam vi skribas `class`, `role`, `has` aŭ `method`, la kompililo konstruas vian tipon por vi. Ĝi faras tion per MOP-metodoj kiel `.^add_method` kaj `.^add_attribute`.

Ni diras «principe», ĉar ĉi tio estas modelo de la lingvo. Ĝi ne estas promeso pri iu certa kompililo. La objekta sistemo estas *difinita* per la MOP. Sed ĉu donita realigo vere sendas ĉiun deklaron tra tiuj metametodoj? Kaj ĉu vi povas vidi, ke ĝi faras tion? Tio dependas de ĉiu realigo. Pro la sama kialo, mem *voki* ĉi tiujn metametodojn dependas de la realigo. Kompililoj povas proponi malsamajn metametodojn, kaj ilia ekzakta konduto povas malsami. Do kodo kun `.^add_method` kaj similaj metodoj eble funkcias malsame sur ĉiu Raku.

Aldoni metodojn je rultempo estas potenca ilo, sed vi malofte bezonos ĝin. La plej multaj programoj neniam uzas ĝin. Sed ĝuste ĝi faras la objektan sistemon de Raku malfermita. La reguloj de klasoj mem estas skribitaj per la MOP, do vi povas etendi ilin. En ĉiutaga kodo, la parto de la MOP, kiun vi efektive uzos, estas inspektado. Vi vidis ĉi tiujn metametodojn en la antaŭa temo.

{% include nav.html %}
